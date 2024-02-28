; Auto-generated. Do not edit!


(cl:in-package lasr_vision_msgs-srv)


;//! \htmlinclude YoloDetection-request.msg.html

(cl:defclass <YoloDetection-request> (roslisp-msg-protocol:ros-message)
  ((image_raw
    :reader image_raw
    :initarg :image_raw
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (dataset
    :reader dataset
    :initarg :dataset
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (nms
    :reader nms
    :initarg :nms
    :type cl:float
    :initform 0.0))
)

(cl:defclass YoloDetection-request (<YoloDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoloDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoloDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-srv:<YoloDetection-request> is deprecated: use lasr_vision_msgs-srv:YoloDetection-request instead.")))

(cl:ensure-generic-function 'image_raw-val :lambda-list '(m))
(cl:defmethod image_raw-val ((m <YoloDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:image_raw-val is deprecated.  Use lasr_vision_msgs-srv:image_raw instead.")
  (image_raw m))

(cl:ensure-generic-function 'dataset-val :lambda-list '(m))
(cl:defmethod dataset-val ((m <YoloDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:dataset-val is deprecated.  Use lasr_vision_msgs-srv:dataset instead.")
  (dataset m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <YoloDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:confidence-val is deprecated.  Use lasr_vision_msgs-srv:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'nms-val :lambda-list '(m))
(cl:defmethod nms-val ((m <YoloDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:nms-val is deprecated.  Use lasr_vision_msgs-srv:nms instead.")
  (nms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoloDetection-request>) ostream)
  "Serializes a message object of type '<YoloDetection-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_raw) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dataset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dataset))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'nms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoloDetection-request>) istream)
  "Deserializes a message object of type '<YoloDetection-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_raw) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dataset) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dataset) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nms) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoloDetection-request>)))
  "Returns string type for a service object of type '<YoloDetection-request>"
  "lasr_vision_msgs/YoloDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoloDetection-request)))
  "Returns string type for a service object of type 'YoloDetection-request"
  "lasr_vision_msgs/YoloDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoloDetection-request>)))
  "Returns md5sum for a message object of type '<YoloDetection-request>"
  "3fc722e35ac1e73f453c28f316971286")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoloDetection-request)))
  "Returns md5sum for a message object of type 'YoloDetection-request"
  "3fc722e35ac1e73f453c28f316971286")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoloDetection-request>)))
  "Returns full string definition for message of type '<YoloDetection-request>"
  (cl:format cl:nil "# Image to run inference on~%sensor_msgs/Image image_raw~%~%# YOLO model to use~%string dataset~%~%# How certain the detection should be to include~%float32 confidence~%~%# Non-maximum Supression~%#~%# Guiding value to remove overlapping bounding boxes~%float32 nms~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoloDetection-request)))
  "Returns full string definition for message of type 'YoloDetection-request"
  (cl:format cl:nil "# Image to run inference on~%sensor_msgs/Image image_raw~%~%# YOLO model to use~%string dataset~%~%# How certain the detection should be to include~%float32 confidence~%~%# Non-maximum Supression~%#~%# Guiding value to remove overlapping bounding boxes~%float32 nms~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoloDetection-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_raw))
     4 (cl:length (cl:slot-value msg 'dataset))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoloDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YoloDetection-request
    (cl:cons ':image_raw (image_raw msg))
    (cl:cons ':dataset (dataset msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':nms (nms msg))
))
;//! \htmlinclude YoloDetection-response.msg.html

(cl:defclass <YoloDetection-response> (roslisp-msg-protocol:ros-message)
  ((detected_objects
    :reader detected_objects
    :initarg :detected_objects
    :type (cl:vector lasr_vision_msgs-msg:Detection)
   :initform (cl:make-array 0 :element-type 'lasr_vision_msgs-msg:Detection :initial-element (cl:make-instance 'lasr_vision_msgs-msg:Detection))))
)

(cl:defclass YoloDetection-response (<YoloDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoloDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoloDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-srv:<YoloDetection-response> is deprecated: use lasr_vision_msgs-srv:YoloDetection-response instead.")))

(cl:ensure-generic-function 'detected_objects-val :lambda-list '(m))
(cl:defmethod detected_objects-val ((m <YoloDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:detected_objects-val is deprecated.  Use lasr_vision_msgs-srv:detected_objects instead.")
  (detected_objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoloDetection-response>) ostream)
  "Serializes a message object of type '<YoloDetection-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detected_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detected_objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoloDetection-response>) istream)
  "Deserializes a message object of type '<YoloDetection-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detected_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detected_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lasr_vision_msgs-msg:Detection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoloDetection-response>)))
  "Returns string type for a service object of type '<YoloDetection-response>"
  "lasr_vision_msgs/YoloDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoloDetection-response)))
  "Returns string type for a service object of type 'YoloDetection-response"
  "lasr_vision_msgs/YoloDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoloDetection-response>)))
  "Returns md5sum for a message object of type '<YoloDetection-response>"
  "3fc722e35ac1e73f453c28f316971286")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoloDetection-response)))
  "Returns md5sum for a message object of type 'YoloDetection-response"
  "3fc722e35ac1e73f453c28f316971286")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoloDetection-response>)))
  "Returns full string definition for message of type '<YoloDetection-response>"
  (cl:format cl:nil "# Detection result~%lasr_vision_msgs/Detection[] detected_objects~%~%================================================================================~%MSG: lasr_vision_msgs/Detection~%# Detected Object Class~%string name~%~%# How certain we are this is what we think it is~%float32 confidence~%~%# Bounding box mask defined in pixel-space~%int32[] xywh~%~%# Segmentation mask defined in pixel-space~%#~%# This will be empty if a segmentation model was not used~%int32[] xyseg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoloDetection-response)))
  "Returns full string definition for message of type 'YoloDetection-response"
  (cl:format cl:nil "# Detection result~%lasr_vision_msgs/Detection[] detected_objects~%~%================================================================================~%MSG: lasr_vision_msgs/Detection~%# Detected Object Class~%string name~%~%# How certain we are this is what we think it is~%float32 confidence~%~%# Bounding box mask defined in pixel-space~%int32[] xywh~%~%# Segmentation mask defined in pixel-space~%#~%# This will be empty if a segmentation model was not used~%int32[] xyseg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoloDetection-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detected_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoloDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YoloDetection-response
    (cl:cons ':detected_objects (detected_objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YoloDetection)))
  'YoloDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YoloDetection)))
  'YoloDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoloDetection)))
  "Returns string type for a service object of type '<YoloDetection>"
  "lasr_vision_msgs/YoloDetection")