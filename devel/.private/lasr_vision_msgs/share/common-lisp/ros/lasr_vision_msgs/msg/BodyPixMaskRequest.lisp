; Auto-generated. Do not edit!


(cl:in-package lasr_vision_msgs-msg)


;//! \htmlinclude BodyPixMaskRequest.msg.html

(cl:defclass <BodyPixMaskRequest> (roslisp-msg-protocol:ros-message)
  ((parts
    :reader parts
    :initarg :parts
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass BodyPixMaskRequest (<BodyPixMaskRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyPixMaskRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyPixMaskRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-msg:<BodyPixMaskRequest> is deprecated: use lasr_vision_msgs-msg:BodyPixMaskRequest instead.")))

(cl:ensure-generic-function 'parts-val :lambda-list '(m))
(cl:defmethod parts-val ((m <BodyPixMaskRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-msg:parts-val is deprecated.  Use lasr_vision_msgs-msg:parts instead.")
  (parts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyPixMaskRequest>) ostream)
  "Serializes a message object of type '<BodyPixMaskRequest>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'parts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyPixMaskRequest>) istream)
  "Deserializes a message object of type '<BodyPixMaskRequest>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyPixMaskRequest>)))
  "Returns string type for a message object of type '<BodyPixMaskRequest>"
  "lasr_vision_msgs/BodyPixMaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyPixMaskRequest)))
  "Returns string type for a message object of type 'BodyPixMaskRequest"
  "lasr_vision_msgs/BodyPixMaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyPixMaskRequest>)))
  "Returns md5sum for a message object of type '<BodyPixMaskRequest>"
  "61920c0acc31cd7d2b61692a8f73f78b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyPixMaskRequest)))
  "Returns md5sum for a message object of type 'BodyPixMaskRequest"
  "61920c0acc31cd7d2b61692a8f73f78b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyPixMaskRequest>)))
  "Returns full string definition for message of type '<BodyPixMaskRequest>"
  (cl:format cl:nil "# List of parts~%#~%# A full list is available here:~%# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/part_channels.py#L5~%string[] parts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyPixMaskRequest)))
  "Returns full string definition for message of type 'BodyPixMaskRequest"
  (cl:format cl:nil "# List of parts~%#~%# A full list is available here:~%# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/part_channels.py#L5~%string[] parts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyPixMaskRequest>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyPixMaskRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyPixMaskRequest
    (cl:cons ':parts (parts msg))
))
