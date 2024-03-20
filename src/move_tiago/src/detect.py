import struct

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
        # create service proxy
        self.detect_service = rospy.ServiceProxy('/yolov8/detect', YoloDetection)
        self.tfb = tf2_ros.Buffer()
        self.tf_listener = tf2_ros.TransformListener(self.tfb)
        self.person_colour = None

    def get_tiago_pose(self):

        tp = rospy.wait_for_message("/robot_pose", PoseWithCovarianceStamped)

        point = Point(x=tp.pose.pose.position.x, y=tp.pose.pose.position.y, z=tp.pose.pose.position.z)

        point_stamped = PointStamped()
        point_stamped.point = point
        point_stamped.header.frame_id = "base_link"
        point_stamped.header.stamp = rospy.Time(0)

        try:
            tiago_pose = self.tfb.transform(point_stamped, "map")
            # rospy.loginfo(f"Tiago pose {tiago_pose}")
        except TransformException as e:
            rospy.loginfo(f"No transformation available {e}")

        return tiago_pose


    def coord_publisher(self, x, y):

        # Create a publisher with topic name 'coordinates' and message type 'Point'
        pub = rospy.Publisher('coordinates', Point, queue_size=10)

        rate = rospy.Rate(1)  # 1 Hz

        point_msg = Point()

        point_msg.x = x
        point_msg.y = y

        pub.publish(point_msg)

        rospy.loginfo("Published coordinates: x = %.2f, y = %.2f", x, y)

        rate.sleep()

    # calculate the point of the person
    def get_person_pose(self, mask_seg):

        # get point cloud
        pcl = rospy.wait_for_message('/xtion/depth_registered/points', PointCloud2)
        # print(pcl.header.frame_id) # frame of the point cloud
        # extract x, y, z from points
        depth_data = point_cloud2.read_points(pcl, field_names=("x", "y", "z"), skip_nans=True)
        depth_array = np.array(list(depth_data))

        total_x = 0.0
        total_y = 0.0
        total_z = 0.0
        num_points = len(mask_seg)

        try:
            for point in mask_seg:
                # for every point in the seg mask inside the pcl, extract x, y, z
                x, y, z = depth_array[point]
                total_x += x
                total_y += y
                total_z += z
        except IndexError as e:
            print(f"Error calculating person pose: {e}")

        average_x = (total_x / num_points)  # - 0.5
        average_y = (total_y / num_points)  # + 0.1
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

    # Returns average colour of person. Takes forever.
    # Make sure person is FACING tiago. Reduced PCL data makes this function less accurate
    def get_person_colour(self, mask_seg):

        pcl = rospy.wait_for_message('/xtion/depth_registered/points', PointCloud2)

        sum_r = sum_g = sum_b = count = 0.0
        # Calculate average rgb of all points in pcl
        for point in point_cloud2.read_points(pcl, field_names=("x", "y", "z", "rgb"), skip_nans=True):
        # Extract rgb values from each point
            r, g, b = struct.unpack('I', struct.pack('f', point[3]))[0] >> 16 & 0xff, \
                      struct.unpack('I', struct.pack('f', point[3]))[0] >> 8 & 0xff, \
                      struct.unpack('I', struct.pack('f', point[3]))[0] & 0xff

            sum_r += r
            sum_g += g
            sum_b += b
            count += 1

        average_r = sum_r/count
        average_g = sum_g/count
        average_b = sum_b/count

        print(average_r, average_g, average_b)

        colour_ranges = {
            'red': ((200, 0, 0), (255, 100, 100)),
            'green': ((0, 150, 0), (100, 255, 100)),
            'blue': ((0, 0, 150), (100, 100, 255)),
            'yellow': ((200, 200, 0), (255, 255, 100)),
            'orange': ((200, 100, 0), (255, 150, 100)),
            'purple': ((100, 0, 100), (150, 50, 150)),
            'pink': ((255, 100, 200), (255, 150, 255)),
            'cyan': ((0, 200, 200), (100, 255, 255)),
            'brown': ((100, 50, 0), (150, 100, 50)),
            'white': ((200, 200, 200), (255, 255, 255)),
            'black': ((0, 0, 0), (50, 50, 50)),
            # Add more colours for better accuracy
        }

        # Find the closest colour that matches calculated rgb values
        closest_colour = None
        min_distance = float('inf')
        for colour, (lower_bound, upper_bound) in colour_ranges.items():
            lower_distance = np.linalg.norm(np.array(lower_bound) - np.array([average_r, average_g, average_b]))
            upper_distance = np.linalg.norm(np.array(upper_bound) - np.array([average_r, average_g, average_b]))
            distance = min(lower_distance, upper_distance)
            if distance < min_distance:
                min_distance = distance
                closest_colour = colour

        return closest_colour

    # move the person point out of the obstruction zone
    def make_point_accessible(self, person):

        # get current pose of tiago
        tiago_pose = self.get_tiago_pose()

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

        if self.counter % 10 == 0:
            # instantiate the service request
            request = YoloDetectionRequest()
            # sensor_msgs/Image
            request.image_raw = img
            # YOLOv8 model, auto-downloads
            request.dataset = "yolov8n-seg.pt"
            # minimum confidence to include in results
            request.confidence = 0.5
            # coord_publisher(point.x, point.y)n maximal supression
            request.nms = 0.3

            # send request
            response = self.detect_service(request)

            if response.detected_objects:
                rospy.loginfo("DETECTION")

                self.found = True

                for resp in response.detected_objects:

                    self.mask = resp.xyseg
                    colour = self.get_person_colour(self.mask)

                    rospy.loginfo(f"Found {resp.name}, colour is {colour}")
                    # calc where person is
                    point = self.get_person_pose(self.mask)
                    # print(point)
                    final_point = self.make_point_accessible(point)
                    print(final_point)
                    x = final_point.x
                    y = final_point.y

                    # only send coords if we are following the same person

                    if not self.person_colour:
                        self.person_colour = colour
                        rospy.loginfo(f"Set person's colour to {self.person_colour}")
                        self.coord_publisher(x, y)
                    elif colour == self.person_colour:
                        self.coord_publisher(x, y)
                    else:
                        rospy.loginfo("Not our person")
                        pass


            else:
                rospy.loginfo("NO DETECTION")
                self.found = False

    def is_tiago_within_range(self):

        tiago_pose = self.get_tiago_pose()
        person_pose = self.get_person_pose(self.mask)

        # Calculate the distance between Tiago's pose and the person's pose
        distance = math.sqrt(
            (tiago_pose.point.x - person_pose.point.x) ** 2 + (tiago_pose.point.y - person_pose.point.y) ** 2)

        radius = 0.5

        # print(f"Tiago {tiago_pose.point.x} {tiago_pose.point.y}, Person {person_pose.point.x} {person_pose.point.y}")

        # Check if the distance is less than or equal to the radius
        if distance <= radius:
            print("In range")
            return True
        else:
            print("Out of range")
            return False