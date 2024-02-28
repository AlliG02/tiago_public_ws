; Auto-generated. Do not edit!


(cl:in-package lasr_vision_msgs-srv)


;//! \htmlinclude TorchFaceFeatureDetection-request.msg.html

(cl:defclass <TorchFaceFeatureDetection-request> (roslisp-msg-protocol:ros-message)
  ((image_raw
    :reader image_raw
    :initarg :image_raw
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass TorchFaceFeatureDetection-request (<TorchFaceFeatureDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TorchFaceFeatureDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TorchFaceFeatureDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-srv:<TorchFaceFeatureDetection-request> is deprecated: use lasr_vision_msgs-srv:TorchFaceFeatureDetection-request instead.")))

(cl:ensure-generic-function 'image_raw-val :lambda-list '(m))
(cl:defmethod image_raw-val ((m <TorchFaceFeatureDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:image_raw-val is deprecated.  Use lasr_vision_msgs-srv:image_raw instead.")
  (image_raw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorchFaceFeatureDetection-request>) ostream)
  "Serializes a message object of type '<TorchFaceFeatureDetection-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_raw) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorchFaceFeatureDetection-request>) istream)
  "Deserializes a message object of type '<TorchFaceFeatureDetection-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_raw) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TorchFaceFeatureDetection-request>)))
  "Returns string type for a service object of type '<TorchFaceFeatureDetection-request>"
  "lasr_vision_msgs/TorchFaceFeatureDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorchFaceFeatureDetection-request)))
  "Returns string type for a service object of type 'TorchFaceFeatureDetection-request"
  "lasr_vision_msgs/TorchFaceFeatureDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TorchFaceFeatureDetection-request>)))
  "Returns md5sum for a message object of type '<TorchFaceFeatureDetection-request>"
  "71d0419cc4eccd880efd242219ef83a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorchFaceFeatureDetection-request)))
  "Returns md5sum for a message object of type 'TorchFaceFeatureDetection-request"
  "71d0419cc4eccd880efd242219ef83a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorchFaceFeatureDetection-request>)))
  "Returns full string definition for message of type '<TorchFaceFeatureDetection-request>"
  (cl:format cl:nil "# Image to run inference on~%sensor_msgs/Image image_raw~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorchFaceFeatureDetection-request)))
  "Returns full string definition for message of type 'TorchFaceFeatureDetection-request"
  (cl:format cl:nil "# Image to run inference on~%sensor_msgs/Image image_raw~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TorchFaceFeatureDetection-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_raw))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TorchFaceFeatureDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TorchFaceFeatureDetection-request
    (cl:cons ':image_raw (image_raw msg))
))
;//! \htmlinclude TorchFaceFeatureDetection-response.msg.html

(cl:defclass <TorchFaceFeatureDetection-response> (roslisp-msg-protocol:ros-message)
  ((detected_features
    :reader detected_features
    :initarg :detected_features
    :type (cl:vector lasr_vision_msgs-msg:FeatureWithColour)
   :initform (cl:make-array 0 :element-type 'lasr_vision_msgs-msg:FeatureWithColour :initial-element (cl:make-instance 'lasr_vision_msgs-msg:FeatureWithColour))))
)

(cl:defclass TorchFaceFeatureDetection-response (<TorchFaceFeatureDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TorchFaceFeatureDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TorchFaceFeatureDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-srv:<TorchFaceFeatureDetection-response> is deprecated: use lasr_vision_msgs-srv:TorchFaceFeatureDetection-response instead.")))

(cl:ensure-generic-function 'detected_features-val :lambda-list '(m))
(cl:defmethod detected_features-val ((m <TorchFaceFeatureDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:detected_features-val is deprecated.  Use lasr_vision_msgs-srv:detected_features instead.")
  (detected_features m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorchFaceFeatureDetection-response>) ostream)
  "Serializes a message object of type '<TorchFaceFeatureDetection-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detected_features))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detected_features))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorchFaceFeatureDetection-response>) istream)
  "Deserializes a message object of type '<TorchFaceFeatureDetection-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detected_features) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detected_features)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lasr_vision_msgs-msg:FeatureWithColour))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TorchFaceFeatureDetection-response>)))
  "Returns string type for a service object of type '<TorchFaceFeatureDetection-response>"
  "lasr_vision_msgs/TorchFaceFeatureDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorchFaceFeatureDetection-response)))
  "Returns string type for a service object of type 'TorchFaceFeatureDetection-response"
  "lasr_vision_msgs/TorchFaceFeatureDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TorchFaceFeatureDetection-response>)))
  "Returns md5sum for a message object of type '<TorchFaceFeatureDetection-response>"
  "71d0419cc4eccd880efd242219ef83a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorchFaceFeatureDetection-response)))
  "Returns md5sum for a message object of type 'TorchFaceFeatureDetection-response"
  "71d0419cc4eccd880efd242219ef83a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorchFaceFeatureDetection-response>)))
  "Returns full string definition for message of type '<TorchFaceFeatureDetection-response>"
  (cl:format cl:nil "# Detection result~%lasr_vision_msgs/FeatureWithColour[] detected_features~%~%================================================================================~%MSG: lasr_vision_msgs/FeatureWithColour~%# Feature name~%string name~%~%# Colour predictions~%lasr_vision_msgs/ColourPrediction[] colours~%~%================================================================================~%MSG: lasr_vision_msgs/ColourPrediction~%# Colour~%string colour~%~%# Distance to the colour~%#~%# Lower = higher chance~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorchFaceFeatureDetection-response)))
  "Returns full string definition for message of type 'TorchFaceFeatureDetection-response"
  (cl:format cl:nil "# Detection result~%lasr_vision_msgs/FeatureWithColour[] detected_features~%~%================================================================================~%MSG: lasr_vision_msgs/FeatureWithColour~%# Feature name~%string name~%~%# Colour predictions~%lasr_vision_msgs/ColourPrediction[] colours~%~%================================================================================~%MSG: lasr_vision_msgs/ColourPrediction~%# Colour~%string colour~%~%# Distance to the colour~%#~%# Lower = higher chance~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TorchFaceFeatureDetection-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detected_features) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TorchFaceFeatureDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TorchFaceFeatureDetection-response
    (cl:cons ':detected_features (detected_features msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TorchFaceFeatureDetection)))
  'TorchFaceFeatureDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TorchFaceFeatureDetection)))
  'TorchFaceFeatureDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorchFaceFeatureDetection)))
  "Returns string type for a service object of type '<TorchFaceFeatureDetection>"
  "lasr_vision_msgs/TorchFaceFeatureDetection")