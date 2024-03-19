import rospy
import numpy as np
import math
from sensor_msgs.msg import Image, PointCloud2
from sensor_msgs import point_cloud2
from lasr_vision_msgs.srv import YoloDetection, YoloDetectionRequest
from geometry_msgs.msg import Point, PointStamped, PoseWithCovarianceStamped

import tf2_ros
from tf2_ros import TransformException
import tf2_geometry_msgs # need this import otherwise transformations do not work

class Detect:

    def __init__(self):
        self.counter = 0
        self.mask = []
        self.found = False
        self.detect_service = rospy.ServiceProxy('/yolov8/detect', YoloDetection)     # create service proxy
        self.tfb = tf2_ros.Buffer()
        self.tf_listener = tf2_ros.TransformListener(self.tfb)


    def get_tiago_pose(self):

        # get current pose of tiago
        tp = rospy.wait_for_message("/robot_pose", PoseWithCovarianceStamped)

        point = Point(x=tp.pose.pose.position.x, y=tp.pose.pose.position.y, z=tp.pose.pose.position.z)

        point_stamped = PointStamped()
        point_stamped.point = point
        point_stamped.header.frame_id = "base_link"
        point_stamped.header.stamp = rospy.Time(0)

        try:
            tiago_pose = self.tfb.transform(point_stamped, "map")
            rospy.loginfo(f"Tiago pose {tiago_pose}")
        except TransformException as e:
            rospy.loginfo(f"No transformation available {e}")

        return tiago_pose

    # publish detected coordinates to 'coordinates' topic
    def coord_publisher(self, x, y):
        # Initialize the ROS node
        # rospy.init_node('coordinate_publisher', anonymous=True)

        # Create a publisher with topic name 'coordinates' and message type 'Point'
        pub = rospy.Publisher('coordinates', Point, queue_size=10)

        # Set the rate at which to publish (in Hz)
        rate = rospy.Rate(1)  # 1 Hz

        # Create a Point message
        point_msg = Point()

        # Set the x and y coordinates
        point_msg.x = x
        point_msg.y = y

        # Publish the Point message
        pub.publish(point_msg)

        # Print the published coordinates
        rospy.loginfo("Published coordinates: x = %.2f, y = %.2f", x, y)

        # Sleep to maintain the desired publishing rate
        rate.sleep()

    # calculate the point of the person
    def get_person_pose(self, mask_seg):

        pcl = rospy.wait_for_message('/xtion/depth_registered/points', PointCloud2) # get point cloud
        # print(pcl.header.frame_id) # frame of the point cloud
        depth_data = point_cloud2.read_points(pcl, field_names=("x", "y", "z"), skip_nans=True) # extract x, y, z from points
        depth_array = np.array(list(depth_data))

        total_x = 0.0
        total_y = 0.0
        total_z = 0.0
        num_points = len(mask_seg)

        try:
            for point in mask_seg:
                x, y, z = depth_array[point] # for every point in the seg mask inside the pcl, extract x, y, z
                total_x += x
                total_y += y
                total_z += z
        except IndexError as e:
            print(f"Error calculating person pose: {e}")

        average_x = (total_x / num_points) # - 0.5
        average_y = (total_y / num_points) # + 0.1
        average_z = total_z / num_points

        point = Point(x=average_x, y=average_y, z=average_z)
        point_stamped = PointStamped()
        point_stamped.point = point
        point_stamped.header.frame_id = pcl.header.frame_id
        point_stamped.header.stamp = rospy.Time(0)

        try:
            point_stamped = self.tfb.transform(point_stamped, "map")
            rospy.loginfo("Point transformation successful")
        except TransformException as e:
            rospy.loginfo(f"Transform unavailable {e}")
            pass

        return point_stamped
    #
    # def get_person_color(mask_seg):
    #     # Extract color information from the point cloud
    #     colors = []
    #     pcl = rospy.wait_for_message('/xtion/depth_registered/points', PointCloud2)  # get point cloud
    #
    #     for p in point_cloud2.read_points(pcl, field_names="rgb", skip_nans=True):
    #         color = (int(p[0]) & 0xFF, (int(p[0]) >> 8) & 0xFF, (int(p[0]) >> 16) & 0xFF)
    #         colors.append(color)
    #
    #     # Calculate the average color within the mask
    #     total_r, total_g, total_b = 0, 0, 0
    #     num_points = len(mask_seg)
    #     for point_index in mask_seg:
    #         color = colors[point_index]
    #         total_r += color[0]
    #         total_g += color[1]
    #         total_b += color[2]
    #
    #     average_color = (
    #         total_r / num_points,
    #         total_g / num_points,
    #         total_b / num_points
    #     )
    #
    #     return average_color

    # move the person point out of the obstruction zone
    def make_point_accessible(self, person):

        # get current pose of tiago
        tiago_pose = self.get_tiago_pose()

        # move point out of obstruction zone

        distance_x = abs(tiago_pose.point.x - person.point.x)
        distance_y = abs(tiago_pose.point.y - person.point.y)

        # print(f"Tiago x: {tiago_pose.point.x}. y:{tiago_pose.point.y}")
        # print(f"Person x: {person.point.x}. y:{person.point.y}")

        k = 0.55

        new_pose = Point()
        new_pose.x = tiago_pose.point.x + (k * distance_x)
        new_pose.y = tiago_pose.point.y + (k * distance_y)

        return new_pose

    def detect(self):

        img = rospy.wait_for_message('/xtion/rgb/image_raw', Image)
        self.counter += 1

        x = 0
        y = 0

        if self.counter % 10 == 0:
            # instantiate the service request
            request = YoloDetectionRequest()
            request.image_raw = img  # sensor_msgs/Image
            request.dataset = "yolov8n-seg.pt"  # YOLOv8 model, auto-downloads
            request.confidence = 0.5  # minimum confidence to include in results
            request.nms = 0.3  # coord_publisher(point.x, point.y)n maximal supression
            # fill in service fields

            # send request
            response = self.detect_service(request)

            # output detection information to terminal
            # send detected coords to detect topic
            # update TF tree and broadcast transformation message
            if response.detected_objects:
                rospy.loginfo("DETECTION")

                found = True

                for resp in response.detected_objects:

                    self.mask = resp.xyseg
                    # colour = get_person_color(mask)

                    rospy.loginfo(f"Found {resp.name}")
                    # print(f"Colour {colour}")
                    point = self.get_person_pose(self.mask)  # calc where person is
                    print(point)
                    final_point = self.make_point_accessible(point)
                    print(final_point)
                    x = final_point.x  # - 0.76 works for movement along the x axis
                    y = final_point.y
                    # coord_publisher(point.x, point.y)
                    # coord_publisher(1.45, 0.02) # hard coded test case
                    # publish average x and y to coordinates

                    # print(coord_publisher(point.x, point.y))

                    self.coord_publisher(x, y)  # send point to movement controller

            else:
                rospy.loginfo("NO DETECTION")
                found = False

    def is_tiago_within_range(self):

        tiago_pose = self.get_tiago_pose()
        person_pose = self.get_person_pose(self.mask)

        # Calculate the distance between Tiago's pose and the person's pose
        distance = math.sqrt(
            (tiago_pose.point.x - person_pose.point.x) ** 2 + (tiago_pose.point.y - person_pose.point.y) ** 2)

        radius = 0.5

        print(f"Tiago {tiago_pose.point.x} {tiago_pose.point.y}, Person {person_pose.point.x} {person_pose.point.y}")

        # Check if the distance is less than or equal to the radius
        if distance <= radius:
            print("In range")
            return True
        else:
            print("Out of range")
            return False