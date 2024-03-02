; Auto-generated. Do not edit!


(cl:in-package pcl_segmentation-srv)


;//! \htmlinclude SegmentCuboid-request.msg.html

(cl:defclass <SegmentCuboid-request> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (min
    :reader min
    :initarg :min
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (max
    :reader max
    :initarg :max
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass SegmentCuboid-request (<SegmentCuboid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SegmentCuboid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SegmentCuboid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcl_segmentation-srv:<SegmentCuboid-request> is deprecated: use pcl_segmentation-srv:SegmentCuboid-request instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <SegmentCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_segmentation-srv:points-val is deprecated.  Use pcl_segmentation-srv:points instead.")
  (points m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <SegmentCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_segmentation-srv:min-val is deprecated.  Use pcl_segmentation-srv:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <SegmentCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_segmentation-srv:max-val is deprecated.  Use pcl_segmentation-srv:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SegmentCuboid-request>) ostream)
  "Serializes a message object of type '<SegmentCuboid-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SegmentCuboid-request>) istream)
  "Deserializes a message object of type '<SegmentCuboid-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SegmentCuboid-request>)))
  "Returns string type for a service object of type '<SegmentCuboid-request>"
  "pcl_segmentation/SegmentCuboidRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentCuboid-request)))
  "Returns string type for a service object of type 'SegmentCuboid-request"
  "pcl_segmentation/SegmentCuboidRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SegmentCuboid-request>)))
  "Returns md5sum for a message object of type '<SegmentCuboid-request>"
  "ef9fcf265b6db656ea9d1cf7b117a19d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SegmentCuboid-request)))
  "Returns md5sum for a message object of type 'SegmentCuboid-request"
  "ef9fcf265b6db656ea9d1cf7b117a19d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SegmentCuboid-request>)))
  "Returns full string definition for message of type '<SegmentCuboid-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 points~%geometry_msgs/Point min~%geometry_msgs/Point max~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SegmentCuboid-request)))
  "Returns full string definition for message of type 'SegmentCuboid-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 points~%geometry_msgs/Point min~%geometry_msgs/Point max~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SegmentCuboid-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SegmentCuboid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SegmentCuboid-request
    (cl:cons ':points (points msg))
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
;//! \htmlinclude SegmentCuboid-response.msg.html

(cl:defclass <SegmentCuboid-response> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass SegmentCuboid-response (<SegmentCuboid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SegmentCuboid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SegmentCuboid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcl_segmentation-srv:<SegmentCuboid-response> is deprecated: use pcl_segmentation-srv:SegmentCuboid-response instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <SegmentCuboid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_segmentation-srv:points-val is deprecated.  Use pcl_segmentation-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SegmentCuboid-response>) ostream)
  "Serializes a message object of type '<SegmentCuboid-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SegmentCuboid-response>) istream)
  "Deserializes a message object of type '<SegmentCuboid-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SegmentCuboid-response>)))
  "Returns string type for a service object of type '<SegmentCuboid-response>"
  "pcl_segmentation/SegmentCuboidResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentCuboid-response)))
  "Returns string type for a service object of type 'SegmentCuboid-response"
  "pcl_segmentation/SegmentCuboidResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SegmentCuboid-response>)))
  "Returns md5sum for a message object of type '<SegmentCuboid-response>"
  "ef9fcf265b6db656ea9d1cf7b117a19d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SegmentCuboid-response)))
  "Returns md5sum for a message object of type 'SegmentCuboid-response"
  "ef9fcf265b6db656ea9d1cf7b117a19d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SegmentCuboid-response>)))
  "Returns full string definition for message of type '<SegmentCuboid-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 points~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SegmentCuboid-response)))
  "Returns full string definition for message of type 'SegmentCuboid-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 points~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SegmentCuboid-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SegmentCuboid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SegmentCuboid-response
    (cl:cons ':points (points msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SegmentCuboid)))
  'SegmentCuboid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SegmentCuboid)))
  'SegmentCuboid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentCuboid)))
  "Returns string type for a service object of type '<SegmentCuboid>"
  "pcl_segmentation/SegmentCuboid")