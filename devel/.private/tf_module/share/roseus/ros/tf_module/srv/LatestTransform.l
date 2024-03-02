;; Auto-generated. Do not edit!


(when (boundp 'tf_module::LatestTransform)
  (if (not (find-package "TF_MODULE"))
    (make-package "TF_MODULE"))
  (shadow 'LatestTransform (find-package "TF_MODULE")))
(unless (find-package "TF_MODULE::LATESTTRANSFORM")
  (make-package "TF_MODULE::LATESTTRANSFORM"))
(unless (find-package "TF_MODULE::LATESTTRANSFORMREQUEST")
  (make-package "TF_MODULE::LATESTTRANSFORMREQUEST"))
(unless (find-package "TF_MODULE::LATESTTRANSFORMRESPONSE")
  (make-package "TF_MODULE::LATESTTRANSFORMRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tf_module::LatestTransformRequest
  :super ros::object
  :slots (_from_frame _target_frame ))

(defmethod tf_module::LatestTransformRequest
  (:init
   (&key
    ((:from_frame __from_frame) "")
    ((:target_frame __target_frame) "")
    )
   (send-super :init)
   (setq _from_frame (string __from_frame))
   (setq _target_frame (string __target_frame))
   self)
  (:from_frame
   (&optional __from_frame)
   (if __from_frame (setq _from_frame __from_frame)) _from_frame)
  (:target_frame
   (&optional __target_frame)
   (if __target_frame (setq _target_frame __target_frame)) _target_frame)
  (:serialization-length
   ()
   (+
    ;; string _from_frame
    4 (length _from_frame)
    ;; string _target_frame
    4 (length _target_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _from_frame
       (write-long (length _from_frame) s) (princ _from_frame s)
     ;; string _target_frame
       (write-long (length _target_frame) s) (princ _target_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _from_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _from_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tf_module::LatestTransformResponse
  :super ros::object
  :slots (_transform ))

(defmethod tf_module::LatestTransformResponse
  (:init
   (&key
    ((:transform __transform) (instance geometry_msgs::TransformStamped :init))
    )
   (send-super :init)
   (setq _transform __transform)
   self)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/TransformStamped _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/TransformStamped _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/TransformStamped _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(defclass tf_module::LatestTransform
  :super ros::object
  :slots ())

(setf (get tf_module::LatestTransform :md5sum-) "fe383c2fd1e0d2ae722c2c2191871719")
(setf (get tf_module::LatestTransform :datatype-) "tf_module/LatestTransform")
(setf (get tf_module::LatestTransform :request) tf_module::LatestTransformRequest)
(setf (get tf_module::LatestTransform :response) tf_module::LatestTransformResponse)

(defmethod tf_module::LatestTransformRequest
  (:response () (instance tf_module::LatestTransformResponse :init)))

(setf (get tf_module::LatestTransformRequest :md5sum-) "fe383c2fd1e0d2ae722c2c2191871719")
(setf (get tf_module::LatestTransformRequest :datatype-) "tf_module/LatestTransformRequest")
(setf (get tf_module::LatestTransformRequest :definition-)
      "string from_frame # source frame
string target_frame # target frame
---
geometry_msgs/TransformStamped transform # transform

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
")

(setf (get tf_module::LatestTransformResponse :md5sum-) "fe383c2fd1e0d2ae722c2c2191871719")
(setf (get tf_module::LatestTransformResponse :datatype-) "tf_module/LatestTransformResponse")
(setf (get tf_module::LatestTransformResponse :definition-)
      "string from_frame # source frame
string target_frame # target frame
---
geometry_msgs/TransformStamped transform # transform

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
")



(provide :tf_module/LatestTransform "fe383c2fd1e0d2ae722c2c2191871719")


