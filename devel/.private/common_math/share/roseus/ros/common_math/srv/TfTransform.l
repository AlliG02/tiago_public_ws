;; Auto-generated. Do not edit!


(when (boundp 'common_math::TfTransform)
  (if (not (find-package "COMMON_MATH"))
    (make-package "COMMON_MATH"))
  (shadow 'TfTransform (find-package "COMMON_MATH")))
(unless (find-package "COMMON_MATH::TFTRANSFORM")
  (make-package "COMMON_MATH::TFTRANSFORM"))
(unless (find-package "COMMON_MATH::TFTRANSFORMREQUEST")
  (make-package "COMMON_MATH::TFTRANSFORMREQUEST"))
(unless (find-package "COMMON_MATH::TFTRANSFORMRESPONSE")
  (make-package "COMMON_MATH::TFTRANSFORMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass common_math::TfTransformRequest
  :super ros::object
  :slots (_pose_array _pointcloud _point _target_frame ))

(defmethod common_math::TfTransformRequest
  (:init
   (&key
    ((:pose_array __pose_array) (instance geometry_msgs::PoseArray :init))
    ((:pointcloud __pointcloud) (instance sensor_msgs::PointCloud2 :init))
    ((:point __point) (instance geometry_msgs::PointStamped :init))
    ((:target_frame __target_frame) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _pose_array __pose_array)
   (setq _pointcloud __pointcloud)
   (setq _point __point)
   (setq _target_frame __target_frame)
   self)
  (:pose_array
   (&rest __pose_array)
   (if (keywordp (car __pose_array))
       (send* _pose_array __pose_array)
     (progn
       (if __pose_array (setq _pose_array (car __pose_array)))
       _pose_array)))
  (:pointcloud
   (&rest __pointcloud)
   (if (keywordp (car __pointcloud))
       (send* _pointcloud __pointcloud)
     (progn
       (if __pointcloud (setq _pointcloud (car __pointcloud)))
       _pointcloud)))
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:target_frame
   (&rest __target_frame)
   (if (keywordp (car __target_frame))
       (send* _target_frame __target_frame)
     (progn
       (if __target_frame (setq _target_frame (car __target_frame)))
       _target_frame)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _pose_array
    (send _pose_array :serialization-length)
    ;; sensor_msgs/PointCloud2 _pointcloud
    (send _pointcloud :serialization-length)
    ;; geometry_msgs/PointStamped _point
    (send _point :serialization-length)
    ;; std_msgs/String _target_frame
    (send _target_frame :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _pose_array
       (send _pose_array :serialize s)
     ;; sensor_msgs/PointCloud2 _pointcloud
       (send _pointcloud :serialize s)
     ;; geometry_msgs/PointStamped _point
       (send _point :serialize s)
     ;; std_msgs/String _target_frame
       (send _target_frame :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _pose_array
     (send _pose_array :deserialize buf ptr-) (incf ptr- (send _pose_array :serialization-length))
   ;; sensor_msgs/PointCloud2 _pointcloud
     (send _pointcloud :deserialize buf ptr-) (incf ptr- (send _pointcloud :serialization-length))
   ;; geometry_msgs/PointStamped _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; std_msgs/String _target_frame
     (send _target_frame :deserialize buf ptr-) (incf ptr- (send _target_frame :serialization-length))
   ;;
   self)
  )

(defclass common_math::TfTransformResponse
  :super ros::object
  :slots (_target_pose_array _target_pointcloud _target_point ))

(defmethod common_math::TfTransformResponse
  (:init
   (&key
    ((:target_pose_array __target_pose_array) (instance geometry_msgs::PoseArray :init))
    ((:target_pointcloud __target_pointcloud) (instance sensor_msgs::PointCloud2 :init))
    ((:target_point __target_point) (instance geometry_msgs::PointStamped :init))
    )
   (send-super :init)
   (setq _target_pose_array __target_pose_array)
   (setq _target_pointcloud __target_pointcloud)
   (setq _target_point __target_point)
   self)
  (:target_pose_array
   (&rest __target_pose_array)
   (if (keywordp (car __target_pose_array))
       (send* _target_pose_array __target_pose_array)
     (progn
       (if __target_pose_array (setq _target_pose_array (car __target_pose_array)))
       _target_pose_array)))
  (:target_pointcloud
   (&rest __target_pointcloud)
   (if (keywordp (car __target_pointcloud))
       (send* _target_pointcloud __target_pointcloud)
     (progn
       (if __target_pointcloud (setq _target_pointcloud (car __target_pointcloud)))
       _target_pointcloud)))
  (:target_point
   (&rest __target_point)
   (if (keywordp (car __target_point))
       (send* _target_point __target_point)
     (progn
       (if __target_point (setq _target_point (car __target_point)))
       _target_point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _target_pose_array
    (send _target_pose_array :serialization-length)
    ;; sensor_msgs/PointCloud2 _target_pointcloud
    (send _target_pointcloud :serialization-length)
    ;; geometry_msgs/PointStamped _target_point
    (send _target_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _target_pose_array
       (send _target_pose_array :serialize s)
     ;; sensor_msgs/PointCloud2 _target_pointcloud
       (send _target_pointcloud :serialize s)
     ;; geometry_msgs/PointStamped _target_point
       (send _target_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _target_pose_array
     (send _target_pose_array :deserialize buf ptr-) (incf ptr- (send _target_pose_array :serialization-length))
   ;; sensor_msgs/PointCloud2 _target_pointcloud
     (send _target_pointcloud :deserialize buf ptr-) (incf ptr- (send _target_pointcloud :serialization-length))
   ;; geometry_msgs/PointStamped _target_point
     (send _target_point :deserialize buf ptr-) (incf ptr- (send _target_point :serialization-length))
   ;;
   self)
  )

(defclass common_math::TfTransform
  :super ros::object
  :slots ())

(setf (get common_math::TfTransform :md5sum-) "96331a581f2e4076e832ea1bf966ae70")
(setf (get common_math::TfTransform :datatype-) "common_math/TfTransform")
(setf (get common_math::TfTransform :request) common_math::TfTransformRequest)
(setf (get common_math::TfTransform :response) common_math::TfTransformResponse)

(defmethod common_math::TfTransformRequest
  (:response () (instance common_math::TfTransformResponse :init)))

(setf (get common_math::TfTransformRequest :md5sum-) "96331a581f2e4076e832ea1bf966ae70")
(setf (get common_math::TfTransformRequest :datatype-) "common_math/TfTransformRequest")
(setf (get common_math::TfTransformRequest :definition-)
      "geometry_msgs/PoseArray pose_array
sensor_msgs/PointCloud2 pointcloud
geometry_msgs/PointStamped point
std_msgs/String target_frame

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/String
string data
---
geometry_msgs/PoseArray target_pose_array
sensor_msgs/PointCloud2 target_pointcloud
geometry_msgs/PointStamped target_point

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point
")

(setf (get common_math::TfTransformResponse :md5sum-) "96331a581f2e4076e832ea1bf966ae70")
(setf (get common_math::TfTransformResponse :datatype-) "common_math/TfTransformResponse")
(setf (get common_math::TfTransformResponse :definition-)
      "geometry_msgs/PoseArray pose_array
sensor_msgs/PointCloud2 pointcloud
geometry_msgs/PointStamped point
std_msgs/String target_frame

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/String
string data
---
geometry_msgs/PoseArray target_pose_array
sensor_msgs/PointCloud2 target_pointcloud
geometry_msgs/PointStamped target_point

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point
")



(provide :common_math/TfTransform "96331a581f2e4076e832ea1bf966ae70")


