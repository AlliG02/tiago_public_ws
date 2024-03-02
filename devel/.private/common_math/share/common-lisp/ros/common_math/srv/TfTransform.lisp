; Auto-generated. Do not edit!


(cl:in-package common_math-srv)


;//! \htmlinclude TfTransform-request.msg.html

(cl:defclass <TfTransform-request> (roslisp-msg-protocol:ros-message)
  ((pose_array
    :reader pose_array
    :initarg :pose_array
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (pointcloud
    :reader pointcloud
    :initarg :pointcloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (target_frame
    :reader target_frame
    :initarg :target_frame
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass TfTransform-request (<TfTransform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TfTransform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TfTransform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_math-srv:<TfTransform-request> is deprecated: use common_math-srv:TfTransform-request instead.")))

(cl:ensure-generic-function 'pose_array-val :lambda-list '(m))
(cl:defmethod pose_array-val ((m <TfTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_math-srv:pose_array-val is deprecated.  Use common_math-srv:pose_array instead.")
  (pose_array m))

(cl:ensure-generic-function 'pointcloud-val :lambda-list '(m))
(cl:defmethod pointcloud-val ((m <TfTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_math-srv:pointcloud-val is deprecated.  Use common_math-srv:pointcloud instead.")
  (pointcloud m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <TfTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_math-srv:point-val is deprecated.  Use common_math-srv:point instead.")
  (point m))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <TfTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_math-srv:target_frame-val is deprecated.  Use common_math-srv:target_frame instead.")
  (target_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TfTransform-request>) ostream)
  "Serializes a message object of type '<TfTransform-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_array) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointcloud) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_frame) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TfTransform-request>) istream)
  "Deserializes a message object of type '<TfTransform-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_array) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointcloud) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_frame) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TfTransform-request>)))
  "Returns string type for a service object of type '<TfTransform-request>"
  "common_math/TfTransformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TfTransform-request)))
  "Returns string type for a service object of type 'TfTransform-request"
  "common_math/TfTransformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TfTransform-request>)))
  "Returns md5sum for a message object of type '<TfTransform-request>"
  "96331a581f2e4076e832ea1bf966ae70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TfTransform-request)))
  "Returns md5sum for a message object of type 'TfTransform-request"
  "96331a581f2e4076e832ea1bf966ae70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TfTransform-request>)))
  "Returns full string definition for message of type '<TfTransform-request>"
  (cl:format cl:nil "geometry_msgs/PoseArray pose_array~%sensor_msgs/PointCloud2 pointcloud~%geometry_msgs/PointStamped point~%std_msgs/String target_frame~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TfTransform-request)))
  "Returns full string definition for message of type 'TfTransform-request"
  (cl:format cl:nil "geometry_msgs/PoseArray pose_array~%sensor_msgs/PointCloud2 pointcloud~%geometry_msgs/PointStamped point~%std_msgs/String target_frame~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TfTransform-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_array))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointcloud))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TfTransform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TfTransform-request
    (cl:cons ':pose_array (pose_array msg))
    (cl:cons ':pointcloud (pointcloud msg))
    (cl:cons ':point (point msg))
    (cl:cons ':target_frame (target_frame msg))
))
;//! \htmlinclude TfTransform-response.msg.html

(cl:defclass <TfTransform-response> (roslisp-msg-protocol:ros-message)
  ((target_pose_array
    :reader target_pose_array
    :initarg :target_pose_array
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (target_pointcloud
    :reader target_pointcloud
    :initarg :target_pointcloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (target_point
    :reader target_point
    :initarg :target_point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass TfTransform-response (<TfTransform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TfTransform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TfTransform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_math-srv:<TfTransform-response> is deprecated: use common_math-srv:TfTransform-response instead.")))

(cl:ensure-generic-function 'target_pose_array-val :lambda-list '(m))
(cl:defmethod target_pose_array-val ((m <TfTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_math-srv:target_pose_array-val is deprecated.  Use common_math-srv:target_pose_array instead.")
  (target_pose_array m))

(cl:ensure-generic-function 'target_pointcloud-val :lambda-list '(m))
(cl:defmethod target_pointcloud-val ((m <TfTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_math-srv:target_pointcloud-val is deprecated.  Use common_math-srv:target_pointcloud instead.")
  (target_pointcloud m))

(cl:ensure-generic-function 'target_point-val :lambda-list '(m))
(cl:defmethod target_point-val ((m <TfTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_math-srv:target_point-val is deprecated.  Use common_math-srv:target_point instead.")
  (target_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TfTransform-response>) ostream)
  "Serializes a message object of type '<TfTransform-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose_array) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pointcloud) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TfTransform-response>) istream)
  "Deserializes a message object of type '<TfTransform-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose_array) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pointcloud) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TfTransform-response>)))
  "Returns string type for a service object of type '<TfTransform-response>"
  "common_math/TfTransformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TfTransform-response)))
  "Returns string type for a service object of type 'TfTransform-response"
  "common_math/TfTransformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TfTransform-response>)))
  "Returns md5sum for a message object of type '<TfTransform-response>"
  "96331a581f2e4076e832ea1bf966ae70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TfTransform-response)))
  "Returns md5sum for a message object of type 'TfTransform-response"
  "96331a581f2e4076e832ea1bf966ae70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TfTransform-response>)))
  "Returns full string definition for message of type '<TfTransform-response>"
  (cl:format cl:nil "geometry_msgs/PoseArray target_pose_array~%sensor_msgs/PointCloud2 target_pointcloud~%geometry_msgs/PointStamped target_point~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TfTransform-response)))
  "Returns full string definition for message of type 'TfTransform-response"
  (cl:format cl:nil "geometry_msgs/PoseArray target_pose_array~%sensor_msgs/PointCloud2 target_pointcloud~%geometry_msgs/PointStamped target_point~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TfTransform-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose_array))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pointcloud))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TfTransform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TfTransform-response
    (cl:cons ':target_pose_array (target_pose_array msg))
    (cl:cons ':target_pointcloud (target_pointcloud msg))
    (cl:cons ':target_point (target_point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TfTransform)))
  'TfTransform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TfTransform)))
  'TfTransform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TfTransform)))
  "Returns string type for a service object of type '<TfTransform>"
  "common_math/TfTransform")