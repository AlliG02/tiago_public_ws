; Auto-generated. Do not edit!


(cl:in-package lasr_vision_msgs-srv)


;//! \htmlinclude BodyPixDetection-request.msg.html

(cl:defclass <BodyPixDetection-request> (roslisp-msg-protocol:ros-message)
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
   (masks
    :reader masks
    :initarg :masks
    :type (cl:vector lasr_vision_msgs-msg:BodyPixMaskRequest)
   :initform (cl:make-array 0 :element-type 'lasr_vision_msgs-msg:BodyPixMaskRequest :initial-element (cl:make-instance 'lasr_vision_msgs-msg:BodyPixMaskRequest))))
)

(cl:defclass BodyPixDetection-request (<BodyPixDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyPixDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyPixDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-srv:<BodyPixDetection-request> is deprecated: use lasr_vision_msgs-srv:BodyPixDetection-request instead.")))

(cl:ensure-generic-function 'image_raw-val :lambda-list '(m))
(cl:defmethod image_raw-val ((m <BodyPixDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:image_raw-val is deprecated.  Use lasr_vision_msgs-srv:image_raw instead.")
  (image_raw m))

(cl:ensure-generic-function 'dataset-val :lambda-list '(m))
(cl:defmethod dataset-val ((m <BodyPixDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:dataset-val is deprecated.  Use lasr_vision_msgs-srv:dataset instead.")
  (dataset m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <BodyPixDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:confidence-val is deprecated.  Use lasr_vision_msgs-srv:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'masks-val :lambda-list '(m))
(cl:defmethod masks-val ((m <BodyPixDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:masks-val is deprecated.  Use lasr_vision_msgs-srv:masks instead.")
  (masks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyPixDetection-request>) ostream)
  "Serializes a message object of type '<BodyPixDetection-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'masks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'masks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyPixDetection-request>) istream)
  "Deserializes a message object of type '<BodyPixDetection-request>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'masks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'masks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lasr_vision_msgs-msg:BodyPixMaskRequest))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyPixDetection-request>)))
  "Returns string type for a service object of type '<BodyPixDetection-request>"
  "lasr_vision_msgs/BodyPixDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyPixDetection-request)))
  "Returns string type for a service object of type 'BodyPixDetection-request"
  "lasr_vision_msgs/BodyPixDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyPixDetection-request>)))
  "Returns md5sum for a message object of type '<BodyPixDetection-request>"
  "1aab0085097b15bd22e0c25c6a47130a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyPixDetection-request)))
  "Returns md5sum for a message object of type 'BodyPixDetection-request"
  "1aab0085097b15bd22e0c25c6a47130a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyPixDetection-request>)))
  "Returns full string definition for message of type '<BodyPixDetection-request>"
  (cl:format cl:nil "# Image to run inference on~%sensor_msgs/Image image_raw~%~%# BodyPix model to use~%string dataset~%~%# How certain the detection should be to include~%float32 confidence~%~%# The masks that should be generated~%lasr_vision_msgs/BodyPixMaskRequest[] masks~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: lasr_vision_msgs/BodyPixMaskRequest~%# List of parts~%#~%# A full list is available here:~%# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/part_channels.py#L5~%string[] parts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyPixDetection-request)))
  "Returns full string definition for message of type 'BodyPixDetection-request"
  (cl:format cl:nil "# Image to run inference on~%sensor_msgs/Image image_raw~%~%# BodyPix model to use~%string dataset~%~%# How certain the detection should be to include~%float32 confidence~%~%# The masks that should be generated~%lasr_vision_msgs/BodyPixMaskRequest[] masks~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: lasr_vision_msgs/BodyPixMaskRequest~%# List of parts~%#~%# A full list is available here:~%# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/part_channels.py#L5~%string[] parts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyPixDetection-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_raw))
     4 (cl:length (cl:slot-value msg 'dataset))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'masks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyPixDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyPixDetection-request
    (cl:cons ':image_raw (image_raw msg))
    (cl:cons ':dataset (dataset msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':masks (masks msg))
))
;//! \htmlinclude BodyPixDetection-response.msg.html

(cl:defclass <BodyPixDetection-response> (roslisp-msg-protocol:ros-message)
  ((masks
    :reader masks
    :initarg :masks
    :type (cl:vector lasr_vision_msgs-msg:BodyPixMask)
   :initform (cl:make-array 0 :element-type 'lasr_vision_msgs-msg:BodyPixMask :initial-element (cl:make-instance 'lasr_vision_msgs-msg:BodyPixMask)))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector lasr_vision_msgs-msg:BodyPixPose)
   :initform (cl:make-array 0 :element-type 'lasr_vision_msgs-msg:BodyPixPose :initial-element (cl:make-instance 'lasr_vision_msgs-msg:BodyPixPose))))
)

(cl:defclass BodyPixDetection-response (<BodyPixDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyPixDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyPixDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-srv:<BodyPixDetection-response> is deprecated: use lasr_vision_msgs-srv:BodyPixDetection-response instead.")))

(cl:ensure-generic-function 'masks-val :lambda-list '(m))
(cl:defmethod masks-val ((m <BodyPixDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:masks-val is deprecated.  Use lasr_vision_msgs-srv:masks instead.")
  (masks m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <BodyPixDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-srv:poses-val is deprecated.  Use lasr_vision_msgs-srv:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyPixDetection-response>) ostream)
  "Serializes a message object of type '<BodyPixDetection-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'masks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'masks))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyPixDetection-response>) istream)
  "Deserializes a message object of type '<BodyPixDetection-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'masks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'masks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lasr_vision_msgs-msg:BodyPixMask))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lasr_vision_msgs-msg:BodyPixPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyPixDetection-response>)))
  "Returns string type for a service object of type '<BodyPixDetection-response>"
  "lasr_vision_msgs/BodyPixDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyPixDetection-response)))
  "Returns string type for a service object of type 'BodyPixDetection-response"
  "lasr_vision_msgs/BodyPixDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyPixDetection-response>)))
  "Returns md5sum for a message object of type '<BodyPixDetection-response>"
  "1aab0085097b15bd22e0c25c6a47130a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyPixDetection-response)))
  "Returns md5sum for a message object of type 'BodyPixDetection-response"
  "1aab0085097b15bd22e0c25c6a47130a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyPixDetection-response>)))
  "Returns full string definition for message of type '<BodyPixDetection-response>"
  (cl:format cl:nil "# Generated masks~%lasr_vision_msgs/BodyPixMask[] masks~%~%# Pose information~%lasr_vision_msgs/BodyPixPose[] poses~%~%~%================================================================================~%MSG: lasr_vision_msgs/BodyPixMask~%# 1D array of mask~%bool[] mask~%~%# Shape~%#~%# Use in mask.reshape(...shape) to get back 2D array of mask~%uint32[] shape~%~%================================================================================~%MSG: lasr_vision_msgs/BodyPixPose~%# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/types.py~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyPixDetection-response)))
  "Returns full string definition for message of type 'BodyPixDetection-response"
  (cl:format cl:nil "# Generated masks~%lasr_vision_msgs/BodyPixMask[] masks~%~%# Pose information~%lasr_vision_msgs/BodyPixPose[] poses~%~%~%================================================================================~%MSG: lasr_vision_msgs/BodyPixMask~%# 1D array of mask~%bool[] mask~%~%# Shape~%#~%# Use in mask.reshape(...shape) to get back 2D array of mask~%uint32[] shape~%~%================================================================================~%MSG: lasr_vision_msgs/BodyPixPose~%# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/types.py~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyPixDetection-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'masks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyPixDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyPixDetection-response
    (cl:cons ':masks (masks msg))
    (cl:cons ':poses (poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BodyPixDetection)))
  'BodyPixDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BodyPixDetection)))
  'BodyPixDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyPixDetection)))
  "Returns string type for a service object of type '<BodyPixDetection>"
  "lasr_vision_msgs/BodyPixDetection")