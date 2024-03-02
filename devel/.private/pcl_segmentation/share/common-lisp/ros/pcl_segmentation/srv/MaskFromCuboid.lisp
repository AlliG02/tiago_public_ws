; Auto-generated. Do not edit!


(cl:in-package pcl_segmentation-srv)


;//! \htmlinclude MaskFromCuboid-request.msg.html

(cl:defclass <MaskFromCuboid-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MaskFromCuboid-request (<MaskFromCuboid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaskFromCuboid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaskFromCuboid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcl_segmentation-srv:<MaskFromCuboid-request> is deprecated: use pcl_segmentation-srv:MaskFromCuboid-request instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <MaskFromCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_segmentation-srv:points-val is deprecated.  Use pcl_segmentation-srv:points instead.")
  (points m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <MaskFromCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_segmentation-srv:min-val is deprecated.  Use pcl_segmentation-srv:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <MaskFromCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_segmentation-srv:max-val is deprecated.  Use pcl_segmentation-srv:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaskFromCuboid-request>) ostream)
  "Serializes a message object of type '<MaskFromCuboid-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaskFromCuboid-request>) istream)
  "Deserializes a message object of type '<MaskFromCuboid-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaskFromCuboid-request>)))
  "Returns string type for a service object of type '<MaskFromCuboid-request>"
  "pcl_segmentation/MaskFromCuboidRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaskFromCuboid-request)))
  "Returns string type for a service object of type 'MaskFromCuboid-request"
  "pcl_segmentation/MaskFromCuboidRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaskFromCuboid-request>)))
  "Returns md5sum for a message object of type '<MaskFromCuboid-request>"
  "7f2ad986538b8155db3f7c7f012bfbc9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaskFromCuboid-request)))
  "Returns md5sum for a message object of type 'MaskFromCuboid-request"
  "7f2ad986538b8155db3f7c7f012bfbc9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaskFromCuboid-request>)))
  "Returns full string definition for message of type '<MaskFromCuboid-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 points~%geometry_msgs/Point min~%geometry_msgs/Point max~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaskFromCuboid-request)))
  "Returns full string definition for message of type 'MaskFromCuboid-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 points~%geometry_msgs/Point min~%geometry_msgs/Point max~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaskFromCuboid-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaskFromCuboid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MaskFromCuboid-request
    (cl:cons ':points (points msg))
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
;//! \htmlinclude MaskFromCuboid-response.msg.html

(cl:defclass <MaskFromCuboid-response> (roslisp-msg-protocol:ros-message)
  ((mask
    :reader mask
    :initarg :mask
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass MaskFromCuboid-response (<MaskFromCuboid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaskFromCuboid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaskFromCuboid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcl_segmentation-srv:<MaskFromCuboid-response> is deprecated: use pcl_segmentation-srv:MaskFromCuboid-response instead.")))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <MaskFromCuboid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_segmentation-srv:mask-val is deprecated.  Use pcl_segmentation-srv:mask instead.")
  (mask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaskFromCuboid-response>) ostream)
  "Serializes a message object of type '<MaskFromCuboid-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mask) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaskFromCuboid-response>) istream)
  "Deserializes a message object of type '<MaskFromCuboid-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mask) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaskFromCuboid-response>)))
  "Returns string type for a service object of type '<MaskFromCuboid-response>"
  "pcl_segmentation/MaskFromCuboidResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaskFromCuboid-response)))
  "Returns string type for a service object of type 'MaskFromCuboid-response"
  "pcl_segmentation/MaskFromCuboidResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaskFromCuboid-response>)))
  "Returns md5sum for a message object of type '<MaskFromCuboid-response>"
  "7f2ad986538b8155db3f7c7f012bfbc9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaskFromCuboid-response)))
  "Returns md5sum for a message object of type 'MaskFromCuboid-response"
  "7f2ad986538b8155db3f7c7f012bfbc9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaskFromCuboid-response>)))
  "Returns full string definition for message of type '<MaskFromCuboid-response>"
  (cl:format cl:nil "sensor_msgs/Image mask~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaskFromCuboid-response)))
  "Returns full string definition for message of type 'MaskFromCuboid-response"
  (cl:format cl:nil "sensor_msgs/Image mask~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaskFromCuboid-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mask))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaskFromCuboid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MaskFromCuboid-response
    (cl:cons ':mask (mask msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MaskFromCuboid)))
  'MaskFromCuboid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MaskFromCuboid)))
  'MaskFromCuboid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaskFromCuboid)))
  "Returns string type for a service object of type '<MaskFromCuboid>"
  "pcl_segmentation/MaskFromCuboid")