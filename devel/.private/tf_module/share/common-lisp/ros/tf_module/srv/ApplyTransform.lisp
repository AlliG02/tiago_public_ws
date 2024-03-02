; Auto-generated. Do not edit!


(cl:in-package tf_module-srv)


;//! \htmlinclude ApplyTransform-request.msg.html

(cl:defclass <ApplyTransform-request> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped)))
)

(cl:defclass ApplyTransform-request (<ApplyTransform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApplyTransform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApplyTransform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tf_module-srv:<ApplyTransform-request> is deprecated: use tf_module-srv:ApplyTransform-request instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <ApplyTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_module-srv:points-val is deprecated.  Use tf_module-srv:points instead.")
  (points m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <ApplyTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_module-srv:transform-val is deprecated.  Use tf_module-srv:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApplyTransform-request>) ostream)
  "Serializes a message object of type '<ApplyTransform-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApplyTransform-request>) istream)
  "Deserializes a message object of type '<ApplyTransform-request>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApplyTransform-request>)))
  "Returns string type for a service object of type '<ApplyTransform-request>"
  "tf_module/ApplyTransformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplyTransform-request)))
  "Returns string type for a service object of type 'ApplyTransform-request"
  "tf_module/ApplyTransformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApplyTransform-request>)))
  "Returns md5sum for a message object of type '<ApplyTransform-request>"
  "c6933f0498951dc1d2bc762ddd9384e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApplyTransform-request)))
  "Returns md5sum for a message object of type 'ApplyTransform-request"
  "c6933f0498951dc1d2bc762ddd9384e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApplyTransform-request>)))
  "Returns full string definition for message of type '<ApplyTransform-request>"
  (cl:format cl:nil "geometry_msgs/Point[] points # point we want to transform~%geometry_msgs/TransformStamped transform #the transform we want to use~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApplyTransform-request)))
  "Returns full string definition for message of type 'ApplyTransform-request"
  (cl:format cl:nil "geometry_msgs/Point[] points # point we want to transform~%geometry_msgs/TransformStamped transform #the transform we want to use~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApplyTransform-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApplyTransform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ApplyTransform-request
    (cl:cons ':points (points msg))
    (cl:cons ':transform (transform msg))
))
;//! \htmlinclude ApplyTransform-response.msg.html

(cl:defclass <ApplyTransform-response> (roslisp-msg-protocol:ros-message)
  ((new_points
    :reader new_points
    :initarg :new_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass ApplyTransform-response (<ApplyTransform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApplyTransform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApplyTransform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tf_module-srv:<ApplyTransform-response> is deprecated: use tf_module-srv:ApplyTransform-response instead.")))

(cl:ensure-generic-function 'new_points-val :lambda-list '(m))
(cl:defmethod new_points-val ((m <ApplyTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_module-srv:new_points-val is deprecated.  Use tf_module-srv:new_points instead.")
  (new_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApplyTransform-response>) ostream)
  "Serializes a message object of type '<ApplyTransform-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'new_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'new_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApplyTransform-response>) istream)
  "Deserializes a message object of type '<ApplyTransform-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'new_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'new_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApplyTransform-response>)))
  "Returns string type for a service object of type '<ApplyTransform-response>"
  "tf_module/ApplyTransformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplyTransform-response)))
  "Returns string type for a service object of type 'ApplyTransform-response"
  "tf_module/ApplyTransformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApplyTransform-response>)))
  "Returns md5sum for a message object of type '<ApplyTransform-response>"
  "c6933f0498951dc1d2bc762ddd9384e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApplyTransform-response)))
  "Returns md5sum for a message object of type 'ApplyTransform-response"
  "c6933f0498951dc1d2bc762ddd9384e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApplyTransform-response>)))
  "Returns full string definition for message of type '<ApplyTransform-response>"
  (cl:format cl:nil "geometry_msgs/Point[] new_points # the transformed point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApplyTransform-response)))
  "Returns full string definition for message of type 'ApplyTransform-response"
  (cl:format cl:nil "geometry_msgs/Point[] new_points # the transformed point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApplyTransform-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'new_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApplyTransform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ApplyTransform-response
    (cl:cons ':new_points (new_points msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ApplyTransform)))
  'ApplyTransform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ApplyTransform)))
  'ApplyTransform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplyTransform)))
  "Returns string type for a service object of type '<ApplyTransform>"
  "tf_module/ApplyTransform")