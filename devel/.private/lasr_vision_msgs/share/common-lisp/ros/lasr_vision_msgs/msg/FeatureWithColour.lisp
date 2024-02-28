; Auto-generated. Do not edit!


(cl:in-package lasr_vision_msgs-msg)


;//! \htmlinclude FeatureWithColour.msg.html

(cl:defclass <FeatureWithColour> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (colours
    :reader colours
    :initarg :colours
    :type (cl:vector lasr_vision_msgs-msg:ColourPrediction)
   :initform (cl:make-array 0 :element-type 'lasr_vision_msgs-msg:ColourPrediction :initial-element (cl:make-instance 'lasr_vision_msgs-msg:ColourPrediction))))
)

(cl:defclass FeatureWithColour (<FeatureWithColour>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeatureWithColour>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeatureWithColour)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-msg:<FeatureWithColour> is deprecated: use lasr_vision_msgs-msg:FeatureWithColour instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <FeatureWithColour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-msg:name-val is deprecated.  Use lasr_vision_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'colours-val :lambda-list '(m))
(cl:defmethod colours-val ((m <FeatureWithColour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-msg:colours-val is deprecated.  Use lasr_vision_msgs-msg:colours instead.")
  (colours m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeatureWithColour>) ostream)
  "Serializes a message object of type '<FeatureWithColour>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'colours))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'colours))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeatureWithColour>) istream)
  "Deserializes a message object of type '<FeatureWithColour>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'colours) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'colours)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lasr_vision_msgs-msg:ColourPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeatureWithColour>)))
  "Returns string type for a message object of type '<FeatureWithColour>"
  "lasr_vision_msgs/FeatureWithColour")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatureWithColour)))
  "Returns string type for a message object of type 'FeatureWithColour"
  "lasr_vision_msgs/FeatureWithColour")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeatureWithColour>)))
  "Returns md5sum for a message object of type '<FeatureWithColour>"
  "559e97f1ed0bbb763b8f3f59434ad208")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeatureWithColour)))
  "Returns md5sum for a message object of type 'FeatureWithColour"
  "559e97f1ed0bbb763b8f3f59434ad208")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeatureWithColour>)))
  "Returns full string definition for message of type '<FeatureWithColour>"
  (cl:format cl:nil "# Feature name~%string name~%~%# Colour predictions~%lasr_vision_msgs/ColourPrediction[] colours~%~%================================================================================~%MSG: lasr_vision_msgs/ColourPrediction~%# Colour~%string colour~%~%# Distance to the colour~%#~%# Lower = higher chance~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeatureWithColour)))
  "Returns full string definition for message of type 'FeatureWithColour"
  (cl:format cl:nil "# Feature name~%string name~%~%# Colour predictions~%lasr_vision_msgs/ColourPrediction[] colours~%~%================================================================================~%MSG: lasr_vision_msgs/ColourPrediction~%# Colour~%string colour~%~%# Distance to the colour~%#~%# Lower = higher chance~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeatureWithColour>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'colours) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeatureWithColour>))
  "Converts a ROS message object to a list"
  (cl:list 'FeatureWithColour
    (cl:cons ':name (name msg))
    (cl:cons ':colours (colours msg))
))
