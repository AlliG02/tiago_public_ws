; Auto-generated. Do not edit!


(cl:in-package lasr_vision_msgs-srv)


;//! \htmlinclude Recognise-request.msg.html

(cl:defclass <Recognise-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass Recognise-request (<Recognise-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognise-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognise-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-srv:<Recognise-request> is deprecated: use lasr_vision_msgs-srv:Recognise-request instead.")))

(cl:ensure-generic-function 'image_raw-val :lambda-list '(m))
(cl:defmethod image_raw-val ((m <Recognise-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:image_raw-val is deprecated.  Use lasr_vision_msgs-srv:image_raw instead.")
  (image_raw m))

(cl:ensure-generic-function 'dataset-val :lambda-list '(m))
(cl:defmethod dataset-val ((m <Recognise-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:dataset-val is deprecated.  Use lasr_vision_msgs-srv:dataset instead.")
  (dataset m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Recognise-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:confidence-val is deprecated.  Use lasr_vision_msgs-srv:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognise-request>) ostream)
  "Serializes a message object of type '<Recognise-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognise-request>) istream)
  "Deserializes a message object of type '<Recognise-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognise-request>)))
  "Returns string type for a service object of type '<Recognise-request>"
  "lasr_vision_msgs/RecogniseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognise-request)))
  "Returns string type for a service object of type 'Recognise-request"
  "lasr_vision_msgs/RecogniseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognise-request>)))
  "Returns md5sum for a message object of type '<Recognise-request>"
  "374bce9e43746740c5d20f82f7eecce8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognise-request)))
  "Returns md5sum for a message object of type 'Recognise-request"
  "374bce9e43746740c5d20f82f7eecce8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognise-request>)))
  "Returns full string definition for message of type '<Recognise-request>"
  (cl:format cl:nil "# Image to run inference on~%sensor_msgs/Image image_raw~%~%# Dataset to use~%string dataset~%~%# Confidence threshold for filtering detections~%float32 confidence~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognise-request)))
  "Returns full string definition for message of type 'Recognise-request"
  (cl:format cl:nil "# Image to run inference on~%sensor_msgs/Image image_raw~%~%# Dataset to use~%string dataset~%~%# Confidence threshold for filtering detections~%float32 confidence~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognise-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_raw))
     4 (cl:length (cl:slot-value msg 'dataset))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognise-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognise-request
    (cl:cons ':image_raw (image_raw msg))
    (cl:cons ':dataset (dataset msg))
    (cl:cons ':confidence (confidence msg))
))
;//! \htmlinclude Recognise-response.msg.html

(cl:defclass <Recognise-response> (roslisp-msg-protocol:ros-message)
  ((detections
    :reader detections
    :initarg :detections
    :type (cl:vector lasr_vision_msgs-msg:Detection)
   :initform (cl:make-array 0 :element-type 'lasr_vision_msgs-msg:Detection :initial-element (cl:make-instance 'lasr_vision_msgs-msg:Detection))))
)

(cl:defclass Recognise-response (<Recognise-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognise-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognise-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-srv:<Recognise-response> is deprecated: use lasr_vision_msgs-srv:Recognise-response instead.")))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <Recognise-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:detections-val is deprecated.  Use lasr_vision_msgs-srv:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognise-response>) ostream)
  "Serializes a message object of type '<Recognise-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognise-response>) istream)
  "Deserializes a message object of type '<Recognise-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lasr_vision_msgs-msg:Detection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognise-response>)))
  "Returns string type for a service object of type '<Recognise-response>"
  "lasr_vision_msgs/RecogniseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognise-response)))
  "Returns string type for a service object of type 'Recognise-response"
  "lasr_vision_msgs/RecogniseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognise-response>)))
  "Returns md5sum for a message object of type '<Recognise-response>"
  "374bce9e43746740c5d20f82f7eecce8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognise-response)))
  "Returns md5sum for a message object of type 'Recognise-response"
  "374bce9e43746740c5d20f82f7eecce8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognise-response>)))
  "Returns full string definition for message of type '<Recognise-response>"
  (cl:format cl:nil "~%# Detections~%lasr_vision_msgs/Detection[] detections~%~%~%================================================================================~%MSG: lasr_vision_msgs/Detection~%# Detected Object Class~%string name~%~%# How certain we are this is what we think it is~%float32 confidence~%~%# Bounding box mask defined in pixel-space~%int32[] xywh~%~%# Segmentation mask defined in pixel-space~%#~%# This will be empty if a segmentation model was not used~%int32[] xyseg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognise-response)))
  "Returns full string definition for message of type 'Recognise-response"
  (cl:format cl:nil "~%# Detections~%lasr_vision_msgs/Detection[] detections~%~%~%================================================================================~%MSG: lasr_vision_msgs/Detection~%# Detected Object Class~%string name~%~%# How certain we are this is what we think it is~%float32 confidence~%~%# Bounding box mask defined in pixel-space~%int32[] xywh~%~%# Segmentation mask defined in pixel-space~%#~%# This will be empty if a segmentation model was not used~%int32[] xyseg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognise-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognise-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognise-response
    (cl:cons ':detections (detections msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Recognise)))
  'Recognise-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Recognise)))
  'Recognise-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognise)))
  "Returns string type for a service object of type '<Recognise>"
  "lasr_vision_msgs/Recognise")