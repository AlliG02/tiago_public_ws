#!/usr/bin/env python3

import rospy
import numpy as np
from sensor_msgs.msg import Image, PointCloud2
from sensor_msgs import point_cloud2
from lasr_vision_msgs.srv import YoloDetection, YoloDetectionRequest
from geometry_msgs.msg import Point, TransformStamped

import tf2_ros
import tf_conversions

# create service proxy
detect_service = rospy.ServiceProxy('/yolov8/detect', YoloDetection)


counter = 0
# create request
def callback(img: Image):
    global counter
    counter = counter + 1

    if counter % 20 == 0:
        # instantiate the service request
        request = YoloDetectionRequest()
        request.image_raw = img # sensor_msgs/Image
        request.dataset = "yolov8n-seg.pt" # YOLOv8 model, auto-downloads
        request.confidence = 0.5 # minimum confidence to include in results
        request.nms = 0.3 # non maximal supression
        # fill in service fields

        # send request
        response = detect_service(request)

        # output detection information to terminal
        # send detected coords to detect topic
        # update TF tree and broadcast transformation message
        if response.detected_objects:
            rospy.loginfo("DETECT")
            for resp in response.detected_objects:
                point = calculate_average_point(resp.xyseg)



                print(point)
                # coord_publisher(point.x, point.y)
                coord_publisher(1.45, 0.02) # hard coded test case
                print(coord_publisher(point.x, point.y))
                print(resp)

# publish detected coordinates to 'coordinates' topic
def coord_publisher(x, y):
    # Initialize the ROS node
    # rospy.init_node('coordinate_publisher', anonymous=True)

    # Create a publisher with topic name 'coordinates' and message type 'Point'
    pub = rospy.Publisher('coordinates', Point, queue_size=10)

    # Set the rate at which to publish (in Hz)
    rate = rospy.Rate(1)  # 1 Hz

    while not rospy.is_shutdown():
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

def calculate_average_point(mask_seg):
    pcl = rospy.wait_for_message('/xtion/depth_registered/points', PointCloud2)
    pcl.header # pass this to the broadcaster
    depth_data = point_cloud2.read_points(pcl, field_names=("x", "y", "z"), skip_nans=True)
    depth_array = np.array(list(depth_data))

    total_x = 0.0
    total_y = 0.0
    total_z = 0.0
    num_points = len(mask_seg)
    for point in mask_seg:
        x, y, z = depth_array[point]
        total_x += x
        total_y += y
        total_z += z

    average_x = total_x / num_points
    average_y = total_y / num_points
    average_z = total_z / num_points

    return Point(x=average_x, y=average_y, z=average_z)


if __name__ == '__main__':
    rospy.init_node('detect_coords_node')
    # make subscriber to camera topic + pass Image information + define callback function
    image_subscriber = rospy.Subscriber('/xtion/rgb/image_raw', Image, callback)

    rospy.spin()

