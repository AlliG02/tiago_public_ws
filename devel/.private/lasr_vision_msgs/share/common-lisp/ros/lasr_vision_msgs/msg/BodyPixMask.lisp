; Auto-generated. Do not edit!


(cl:in-package lasr_vision_msgs-msg)


;//! \htmlinclude BodyPixMask.msg.html

(cl:defclass <BodyPixMask> (roslisp-msg-protocol:ros-message)
  ((mask
    :reader mask
    :initarg :mask
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (shape
    :reader shape
    :initarg :shape
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass BodyPixMask (<BodyPixMask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyPixMask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyPixMask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-msg:<BodyPixMask> is deprecated: use lasr_vision_msgs-msg:BodyPixMask instead.")))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <BodyPixMask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-msg:mask-val is deprecated.  Use lasr_vision_msgs-msg:mask instead.")
  (mask m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <BodyPixMask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_vision_msgs-msg:shape-val is deprecated.  Use lasr_vision_msgs-msg:shape instead.")
  (shape m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyPixMask>) ostream)
  "Serializes a message object of type '<BodyPixMask>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mask))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'mask))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'shape))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyPixMask>) istream)
  "Deserializes a message object of type '<BodyPixMask>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mask) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mask)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyPixMask>)))
  "Returns string type for a message object of type '<BodyPixMask>"
  "lasr_vision_msgs/BodyPixMask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyPixMask)))
  "Returns string type for a message object of type 'BodyPixMask"
  "lasr_vision_msgs/BodyPixMask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyPixMask>)))
  "Returns md5sum for a message object of type '<BodyPixMask>"
  "7cdf7dd251c64f79d405b25f2b6644fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyPixMask)))
  "Returns md5sum for a message object of type 'BodyPixMask"
  "7cdf7dd251c64f79d405b25f2b6644fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyPixMask>)))
  "Returns full string definition for message of type '<BodyPixMask>"
  (cl:format cl:nil "# 1D array of mask~%bool[] mask~%~%# Shape~%#~%# Use in mask.reshape(...shape) to get back 2D array of mask~%uint32[] shape~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyPixMask)))
  "Returns full string definition for message of type 'BodyPixMask"
  (cl:format cl:nil "# 1D array of mask~%bool[] mask~%~%# Shape~%#~%# Use in mask.reshape(...shape) to get back 2D array of mask~%uint32[] shape~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyPixMask>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mask) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyPixMask>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyPixMask
    (cl:cons ':mask (mask msg))
    (cl:cons ':shape (shape msg))
))
