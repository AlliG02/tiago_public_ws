; Auto-generated. Do not edit!


(cl:in-package tf_module-srv)


;//! \htmlinclude BaseTransform-request.msg.html

(cl:defclass <BaseTransform-request> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (frame
    :reader frame
    :initarg :frame
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (target_frame
    :reader target_frame
    :initarg :target_frame
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass BaseTransform-request (<BaseTransform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BaseTransform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BaseTransform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tf_module-srv:<BaseTransform-request> is deprecated: use tf_module-srv:BaseTransform-request instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <BaseTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_module-srv:points-val is deprecated.  Use tf_module-srv:points instead.")
  (points m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <BaseTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_module-srv:frame-val is deprecated.  Use tf_module-srv:frame instead.")
  (frame m))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <BaseTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_module-srv:target_frame-val is deprecated.  Use tf_module-srv:target_frame instead.")
  (target_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BaseTransform-request>) ostream)
  "Serializes a message object of type '<BaseTransform-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_frame) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BaseTransform-request>) istream)
  "Deserializes a message object of type '<BaseTransform-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_frame) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BaseTransform-request>)))
  "Returns string type for a service object of type '<BaseTransform-request>"
  "tf_module/BaseTransformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaseTransform-request)))
  "Returns string type for a service object of type 'BaseTransform-request"
  "tf_module/BaseTransformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BaseTransform-request>)))
  "Returns md5sum for a message object of type '<BaseTransform-request>"
  "e34396cb6a4d6ca05fcd61fe22fd3a11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BaseTransform-request)))
  "Returns md5sum for a message object of type 'BaseTransform-request"
  "e34396cb6a4d6ca05fcd61fe22fd3a11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BaseTransform-request>)))
  "Returns full string definition for message of type '<BaseTransform-request>"
  (cl:format cl:nil "geometry_msgs/Point[]         points          # point we want to transform~%std_msgs/String               frame           # the frame of the point~%std_msgs/String               target_frame    # the frame we want to transform the point to~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BaseTransform-request)))
  "Returns full string definition for message of type 'BaseTransform-request"
  (cl:format cl:nil "geometry_msgs/Point[]         points          # point we want to transform~%std_msgs/String               frame           # the frame of the point~%std_msgs/String               target_frame    # the frame we want to transform the point to~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BaseTransform-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BaseTransform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BaseTransform-request
    (cl:cons ':points (points msg))
    (cl:cons ':frame (frame msg))
    (cl:cons ':target_frame (target_frame msg))
))
;//! \htmlinclude BaseTransform-response.msg.html

(cl:defclass <BaseTransform-response> (roslisp-msg-protocol:ros-message)
  ((new_points
    :reader new_points
    :initarg :new_points
    :type (cl:vector geometry_msgs-msg:PointStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PointStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PointStamped))))
)

(cl:defclass BaseTransform-response (<BaseTransform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BaseTransform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BaseTransform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tf_module-srv:<BaseTransform-response> is deprecated: use tf_module-srv:BaseTransform-response instead.")))

(cl:ensure-generic-function 'new_points-val :lambda-list '(m))
(cl:defmethod new_points-val ((m <BaseTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_module-srv:new_points-val is deprecated.  Use tf_module-srv:new_points instead.")
  (new_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BaseTransform-response>) ostream)
  "Serializes a message object of type '<BaseTransform-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'new_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'new_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BaseTransform-response>) istream)
  "Deserializes a message object of type '<BaseTransform-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'new_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'new_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PointStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BaseTransform-response>)))
  "Returns string type for a service object of type '<BaseTransform-response>"
  "tf_module/BaseTransformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaseTransform-response)))
  "Returns string type for a service object of type 'BaseTransform-response"
  "tf_module/BaseTransformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BaseTransform-response>)))
  "Returns md5sum for a message object of type '<BaseTransform-response>"
  "e34396cb6a4d6ca05fcd61fe22fd3a11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BaseTransform-response)))
  "Returns md5sum for a message object of type 'BaseTransform-response"
  "e34396cb6a4d6ca05fcd61fe22fd3a11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BaseTransform-response>)))
  "Returns full string definition for message of type '<BaseTransform-response>"
  (cl:format cl:nil "geometry_msgs/PointStamped[]  new_points      # the transformed point~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BaseTransform-response)))
  "Returns full string definition for message of type 'BaseTransform-response"
  (cl:format cl:nil "geometry_msgs/PointStamped[]  new_points      # the transformed point~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BaseTransform-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'new_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BaseTransform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BaseTransform-response
    (cl:cons ':new_points (new_points msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BaseTransform)))
  'BaseTransform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BaseTransform)))
  'BaseTransform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaseTransform)))
  "Returns string type for a service object of type '<BaseTransform>"
  "tf_module/BaseTransform")