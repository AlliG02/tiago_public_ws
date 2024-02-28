; Auto-generated. Do not edit!


(cl:in-package lasr_vision_msgs-msg)


;//! \htmlinclude ColourPrediction.msg.html

(cl:defclass <ColourPrediction> (roslisp-msg-protocol:ros-message)
  ((colour
    :reader colour
    :initarg :colour
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass ColourPrediction (<ColourPrediction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColourPrediction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColourPrediction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-msg:<ColourPrediction> is deprecated: use lasr_vision_msgs-msg:ColourPrediction instead.")))

(cl:ensure-generic-function 'colour-val :lambda-list '(m))
(cl:defmethod colour-val ((m <ColourPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-msg:colour-val is deprecated.  Use lasr_vision_msgs-msg:colour instead.")
  (colour m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ColourPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-msg:distance-val is deprecated.  Use lasr_vision_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColourPrediction>) ostream)
  "Serializes a message object of type '<ColourPrediction>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'colour))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'colour))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColourPrediction>) istream)
  "Deserializes a message object of type '<ColourPrediction>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'colour) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'colour) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColourPrediction>)))
  "Returns string type for a message object of type '<ColourPrediction>"
  "lasr_vision_msgs/ColourPrediction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColourPrediction)))
  "Returns string type for a message object of type 'ColourPrediction"
  "lasr_vision_msgs/ColourPrediction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColourPrediction>)))
  "Returns md5sum for a message object of type '<ColourPrediction>"
  "15992d44b8e8edf9dc8c9010c5b9d91c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColourPrediction)))
  "Returns md5sum for a message object of type 'ColourPrediction"
  "15992d44b8e8edf9dc8c9010c5b9d91c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColourPrediction>)))
  "Returns full string definition for message of type '<ColourPrediction>"
  (cl:format cl:nil "# Colour~%string colour~%~%# Distance to the colour~%#~%# Lower = higher chance~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColourPrediction)))
  "Returns full string definition for message of type 'ColourPrediction"
  (cl:format cl:nil "# Colour~%string colour~%~%# Distance to the colour~%#~%# Lower = higher chance~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColourPrediction>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'colour))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColourPrediction>))
  "Converts a ROS message object to a list"
  (cl:list 'ColourPrediction
    (cl:cons ':colour (colour msg))
    (cl:cons ':distance (distance msg))
))
