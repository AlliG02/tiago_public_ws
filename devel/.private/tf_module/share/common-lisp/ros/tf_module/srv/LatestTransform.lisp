; Auto-generated. Do not edit!


(cl:in-package tf_module-srv)


;//! \htmlinclude LatestTransform-request.msg.html

(cl:defclass <LatestTransform-request> (roslisp-msg-protocol:ros-message)
  ((from_frame
    :reader from_frame
    :initarg :from_frame
    :type cl:string
    :initform "")
   (target_frame
    :reader target_frame
    :initarg :target_frame
    :type cl:string
    :initform ""))
)

(cl:defclass LatestTransform-request (<LatestTransform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LatestTransform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LatestTransform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tf_module-srv:<LatestTransform-request> is deprecated: use tf_module-srv:LatestTransform-request instead.")))

(cl:ensure-generic-function 'from_frame-val :lambda-list '(m))
(cl:defmethod from_frame-val ((m <LatestTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_module-srv:from_frame-val is deprecated.  Use tf_module-srv:from_frame instead.")
  (from_frame m))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <LatestTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_module-srv:target_frame-val is deprecated.  Use tf_module-srv:target_frame instead.")
  (target_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LatestTransform-request>) ostream)
  "Serializes a message object of type '<LatestTransform-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'from_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'from_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LatestTransform-request>) istream)
  "Deserializes a message object of type '<LatestTransform-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'from_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'from_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LatestTransform-request>)))
  "Returns string type for a service object of type '<LatestTransform-request>"
  "tf_module/LatestTransformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LatestTransform-request)))
  "Returns string type for a service object of type 'LatestTransform-request"
  "tf_module/LatestTransformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LatestTransform-request>)))
  "Returns md5sum for a message object of type '<LatestTransform-request>"
  "fe383c2fd1e0d2ae722c2c2191871719")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LatestTransform-request)))
  "Returns md5sum for a message object of type 'LatestTransform-request"
  "fe383c2fd1e0d2ae722c2c2191871719")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LatestTransform-request>)))
  "Returns full string definition for message of type '<LatestTransform-request>"
  (cl:format cl:nil "string from_frame # source frame~%string target_frame # target frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LatestTransform-request)))
  "Returns full string definition for message of type 'LatestTransform-request"
  (cl:format cl:nil "string from_frame # source frame~%string target_frame # target frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LatestTransform-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'from_frame))
     4 (cl:length (cl:slot-value msg 'target_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LatestTransform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LatestTransform-request
    (cl:cons ':from_frame (from_frame msg))
    (cl:cons ':target_frame (target_frame msg))
))
;//! \htmlinclude LatestTransform-response.msg.html

(cl:defclass <LatestTransform-response> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped)))
)

(cl:defclass LatestTransform-response (<LatestTransform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LatestTransform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LatestTransform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tf_module-srv:<LatestTransform-response> is deprecated: use tf_module-srv:LatestTransform-response instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <LatestTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_module-srv:transform-val is deprecated.  Use tf_module-srv:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LatestTransform-response>) ostream)
  "Serializes a message object of type '<LatestTransform-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LatestTransform-response>) istream)
  "Deserializes a message object of type '<LatestTransform-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LatestTransform-response>)))
  "Returns string type for a service object of type '<LatestTransform-response>"
  "tf_module/LatestTransformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LatestTransform-response)))
  "Returns string type for a service object of type 'LatestTransform-response"
  "tf_module/LatestTransformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LatestTransform-response>)))
  "Returns md5sum for a message object of type '<LatestTransform-response>"
  "fe383c2fd1e0d2ae722c2c2191871719")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LatestTransform-response)))
  "Returns md5sum for a message object of type 'LatestTransform-response"
  "fe383c2fd1e0d2ae722c2c2191871719")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LatestTransform-response>)))
  "Returns full string definition for message of type '<LatestTransform-response>"
  (cl:format cl:nil "geometry_msgs/TransformStamped transform # transform~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LatestTransform-response)))
  "Returns full string definition for message of type 'LatestTransform-response"
  (cl:format cl:nil "geometry_msgs/TransformStamped transform # transform~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LatestTransform-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LatestTransform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LatestTransform-response
    (cl:cons ':transform (transform msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LatestTransform)))
  'LatestTransform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LatestTransform)))
  'LatestTransform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LatestTransform)))
  "Returns string type for a service object of type '<LatestTransform>"
  "tf_module/LatestTransform")