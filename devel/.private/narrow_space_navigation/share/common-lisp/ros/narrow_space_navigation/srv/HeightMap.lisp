; Auto-generated. Do not edit!


(cl:in-package narrow_space_navigation-srv)


;//! \htmlinclude HeightMap-request.msg.html

(cl:defclass <HeightMap-request> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (warped
    :reader warped
    :initarg :warped
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0))
)

(cl:defclass HeightMap-request (<HeightMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeightMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeightMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name narrow_space_navigation-srv:<HeightMap-request> is deprecated: use narrow_space_navigation-srv:HeightMap-request instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <HeightMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader narrow_space_navigation-srv:points-val is deprecated.  Use narrow_space_navigation-srv:points instead.")
  (points m))

(cl:ensure-generic-function 'warped-val :lambda-list '(m))
(cl:defmethod warped-val ((m <HeightMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader narrow_space_navigation-srv:warped-val is deprecated.  Use narrow_space_navigation-srv:warped instead.")
  (warped m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <HeightMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader narrow_space_navigation-srv:timestamp-val is deprecated.  Use narrow_space_navigation-srv:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeightMap-request>) ostream)
  "Serializes a message object of type '<HeightMap-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'warped))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'warped))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeightMap-request>) istream)
  "Deserializes a message object of type '<HeightMap-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'warped) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'warped)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeightMap-request>)))
  "Returns string type for a service object of type '<HeightMap-request>"
  "narrow_space_navigation/HeightMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeightMap-request)))
  "Returns string type for a service object of type 'HeightMap-request"
  "narrow_space_navigation/HeightMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeightMap-request>)))
  "Returns md5sum for a message object of type '<HeightMap-request>"
  "27bdf174dd2ab3aff4c8eca33f7ed90f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeightMap-request)))
  "Returns md5sum for a message object of type 'HeightMap-request"
  "27bdf174dd2ab3aff4c8eca33f7ed90f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeightMap-request>)))
  "Returns full string definition for message of type '<HeightMap-request>"
  (cl:format cl:nil "int32[] points~%int32[] warped~%time timestamp~%# nav_msgs/OccupancyGrid warped~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeightMap-request)))
  "Returns full string definition for message of type 'HeightMap-request"
  (cl:format cl:nil "int32[] points~%int32[] warped~%time timestamp~%# nav_msgs/OccupancyGrid warped~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeightMap-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'warped) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeightMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HeightMap-request
    (cl:cons ':points (points msg))
    (cl:cons ':warped (warped msg))
    (cl:cons ':timestamp (timestamp msg))
))
;//! \htmlinclude HeightMap-response.msg.html

(cl:defclass <HeightMap-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass HeightMap-response (<HeightMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeightMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeightMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name narrow_space_navigation-srv:<HeightMap-response> is deprecated: use narrow_space_navigation-srv:HeightMap-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <HeightMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader narrow_space_navigation-srv:status-val is deprecated.  Use narrow_space_navigation-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <HeightMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader narrow_space_navigation-srv:pose-val is deprecated.  Use narrow_space_navigation-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeightMap-response>) ostream)
  "Serializes a message object of type '<HeightMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeightMap-response>) istream)
  "Deserializes a message object of type '<HeightMap-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeightMap-response>)))
  "Returns string type for a service object of type '<HeightMap-response>"
  "narrow_space_navigation/HeightMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeightMap-response)))
  "Returns string type for a service object of type 'HeightMap-response"
  "narrow_space_navigation/HeightMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeightMap-response>)))
  "Returns md5sum for a message object of type '<HeightMap-response>"
  "27bdf174dd2ab3aff4c8eca33f7ed90f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeightMap-response)))
  "Returns md5sum for a message object of type 'HeightMap-response"
  "27bdf174dd2ab3aff4c8eca33f7ed90f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeightMap-response>)))
  "Returns full string definition for message of type '<HeightMap-response>"
  (cl:format cl:nil "bool status~%geometry_msgs/Pose pose~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeightMap-response)))
  "Returns full string definition for message of type 'HeightMap-response"
  (cl:format cl:nil "bool status~%geometry_msgs/Pose pose~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeightMap-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeightMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HeightMap-response
    (cl:cons ':status (status msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HeightMap)))
  'HeightMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HeightMap)))
  'HeightMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeightMap)))
  "Returns string type for a service object of type '<HeightMap>"
  "narrow_space_navigation/HeightMap")