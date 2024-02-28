from lasr_vision_msgs.srv import YoloDetection, YoloDetectionRequest

# create service proxy
detect_service = rospy.ServiceProxy('/yolov8/detect', YoloDetection)

# create request
request = YoloDetectionRequest()
request.image_raw = image # sensor_msgs/Image
request.dataset = "yolov8n.pt" # YOLOv8 model, auto-downloads
request.confidence = 0.5 # minimum confidence to include in results
request.nms = 0.3 # non maximal supression

# send request
response = detect_service(request)
# .. use request.detections