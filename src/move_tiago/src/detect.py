#!/usr/bin/env python3

import rospy
import numpy as np
from sensor_msgs.msg import Image, PointCloud2
from sensor_msgs import point_cloud2
from lasr_vision_msgs.srv import YoloDetection, YoloDetectionRequest
from geometry_msgs.msg import Point, PointStamped
import tf2_geometry_msgs

import tf2_ros
import tf_conversions

rospy.init_node('detect_coords_node')

# create service proxy
detect_service = rospy.ServiceProxy('/yolov8/detect', YoloDetection)
tfb = tf2_ros.Buffer()
tf_listener = tf2_ros.TransformListener(tfb)


counter = 0
# create request
def callback(img: Image):
    global counter
    counter = counter + 1

    x = 0
    y = 0

    if counter % 20 == 0:
        # instantiate the service request
        request = YoloDetectionRequest()
        request.image_raw = img # sensor_msgs/Image
        request.dataset = "yolov8n-seg.pt" # YOLOv8 model, auto-downloads
        request.confidence = 0.5 # minimum confidence to include in results
        request.nms = 0.3 # coord_publisher(point.x, point.y)n maximal supression
        # fill in service fields

        # send request
        response = detect_service(request)

        # output detection information to terminal
        # send detected coords to detect topic
        # update TF tree and broadcast transformation message
        if response.detected_objects:
            rospy.loginfo("DETECTION")
            for resp in response.detected_objects:

                rospy.loginfo(f"Found {resp.name}")
                point = calculate_average_point_and_transform(resp.xyseg) # calc where person is
                x = point.point.x
                y = point.point.y
                print(point)
                # coord_publisher(point.x, point.y)
                # coord_publisher(1.45, 0.02) # hard coded test case
                # publish average x and y to coordinates

                # print(coord_publisher(point.x, point.y))

                coord_publisher(x, y) # send point to movement controller


# publish detected coordinates to 'coordinates' topic
def coord_publisher(x, y):
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

# current x: 0.0007836426540656172
# desired x:  0.5673575401306152

def calculate_average_point_and_transform(mask_seg):
    pcl = rospy.wait_for_message('/xtion/depth_registered/points', PointCloud2) # get point cloud
    # print(pcl.header.frame_id) # frame of the point cloud
    depth_data = point_cloud2.read_points(pcl, field_names=("x", "y", "z"), skip_nans=True) # extract x, y, z from points
    depth_array = np.array(list(depth_data))

    total_x = 0.0
    total_y = 0.0
    total_z = 0.0
    num_points = len(mask_seg)
    for point in mask_seg:
        x, y, z = depth_array[point] # for every point in the seg mask inside the pcl, extract x, y, z
        total_x += x
        total_y += y
        total_z += z

    average_x = (total_x / num_points) + 0.5
    average_y = (total_y / num_points) + 0.1
    average_z = total_z / num_points

    point = Point(x=average_x, y=average_y, z=average_z)
    point_stamped = PointStamped()
    point_stamped.point = point
    point_stamped.header.frame_id = pcl.header.frame_id
    point_stamped.header.stamp = rospy.Time(0)

    try:
        point_stamped = tfb.transform(point_stamped, "map")
        rospy.loginfo("Point transformation successful")
    except Exception:
        rospy.loginfo("Transform unavailable")
        pass

    return point_stamped

if __name__ == '__main__':
    # make subscriber to camera topic + pass Image information + define callback function
    image_subscriber = rospy.Subscriber('/xtion/rgb/image_raw', Image, callback)

    rospy.spin()