; Auto-generated. Do not edit!


(cl:in-package pcl_segmentation-srv)


;//! \htmlinclude Centroid-request.msg.html

(cl:defclass <Centroid-request> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass Centroid-request (<Centroid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Centroid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Centroid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcl_segmentation-srv:<Centroid-request> is deprecated: use pcl_segmentation-srv:Centroid-request instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Centroid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_segmentation-srv:points-val is deprecated.  Use pcl_segmentation-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Centroid-request>) ostream)
  "Serializes a message object of type '<Centroid-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Centroid-request>) istream)
  "Deserializes a message object of type '<Centroid-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Centroid-request>)))
  "Returns string type for a service object of type '<Centroid-request>"
  "pcl_segmentation/CentroidRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Centroid-request)))
  "Returns string type for a service object of type 'Centroid-request"
  "pcl_segmentation/CentroidRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Centroid-request>)))
  "Returns md5sum for a message object of type '<Centroid-request>"
  "9524e425aabfd4146fc2853e661c3909")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Centroid-request)))
  "Returns md5sum for a message object of type 'Centroid-request"
  "9524e425aabfd4146fc2853e661c3909")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Centroid-request>)))
  "Returns full string definition for message of type '<Centroid-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 points~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Centroid-request)))
  "Returns full string definition for message of type 'Centroid-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 points~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Centroid-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Centroid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Centroid-request
    (cl:cons ':points (points msg))
))
;//! \htmlinclude Centroid-response.msg.html

(cl:defclass <Centroid-response> (roslisp-msg-protocol:ros-message)
  ((centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass Centroid-response (<Centroid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Centroid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Centroid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcl_segmentation-srv:<Centroid-response> is deprecated: use pcl_segmentation-srv:Centroid-response instead.")))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <Centroid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_segmentation-srv:centroid-val is deprecated.  Use pcl_segmentation-srv:centroid instead.")
  (centroid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Centroid-response>) ostream)
  "Serializes a message object of type '<Centroid-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Centroid-response>) istream)
  "Deserializes a message object of type '<Centroid-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Centroid-response>)))
  "Returns string type for a service object of type '<Centroid-response>"
  "pcl_segmentation/CentroidResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Centroid-response)))
  "Returns string type for a service object of type 'Centroid-response"
  "pcl_segmentation/CentroidResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Centroid-response>)))
  "Returns md5sum for a message object of type '<Centroid-response>"
  "9524e425aabfd4146fc2853e661c3909")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Centroid-response)))
  "Returns md5sum for a message object of type 'Centroid-response"
  "9524e425aabfd4146fc2853e661c3909")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Centroid-response>)))
  "Returns full string definition for message of type '<Centroid-response>"
  (cl:format cl:nil "geometry_msgs/PointStamped centroid~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Centroid-response)))
  "Returns full string definition for message of type 'Centroid-response"
  (cl:format cl:nil "geometry_msgs/PointStamped centroid~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Centroid-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Centroid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Centroid-response
    (cl:cons ':centroid (centroid msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Centroid)))
  'Centroid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Centroid)))
  'Centroid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Centroid)))
  "Returns string type for a service object of type '<Centroid>"
  "pcl_segmentation/Centroid")