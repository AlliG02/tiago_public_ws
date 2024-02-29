#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image
from lasr_vision_msgs.srv import YoloDetection, YoloDetectionRequest

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

        if response.detected_objects:
            for resp in response.detected_objects:
                print(resp)

# make subscriber to camera topic + pass Image information + define callback function
subscribe = rospy.Subscriber('/xtion/rgb/image_raw', Image, callback)

if __name__ == '__main__':
    rospy.init_node('detect')

    rospy.spin()

