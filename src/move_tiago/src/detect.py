#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image
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
            for resp in response.detected_objects:
                x_cord, y_cord, width, height = resp.xywh
                coord_publisher(x_cord, y_cord)
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

if __name__ == '__main__':
    rospy.init_node('detect_coords_node')
    # make subscriber to camera topic + pass Image information + define callback function
    image_subscriber = rospy.Subscriber('/xtion/rgb/image_raw', Image, callback)
    rospy.spin()

