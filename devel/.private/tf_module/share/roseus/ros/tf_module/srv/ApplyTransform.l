;; Auto-generated. Do not edit!


(when (boundp 'tf_module::ApplyTransform)
  (if (not (find-package "TF_MODULE"))
    (make-package "TF_MODULE"))
  (shadow 'ApplyTransform (find-package "TF_MODULE")))
(unless (find-package "TF_MODULE::APPLYTRANSFORM")
  (make-package "TF_MODULE::APPLYTRANSFORM"))
(unless (find-package "TF_MODULE::APPLYTRANSFORMREQUEST")
  (make-package "TF_MODULE::APPLYTRANSFORMREQUEST"))
(unless (find-package "TF_MODULE::APPLYTRANSFORMRESPONSE")
  (make-package "TF_MODULE::APPLYTRANSFORMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tf_module::ApplyTransformRequest
  :super ros::object
  :slots (_points _transform ))

(defmethod tf_module::ApplyTransformRequest
  (:init
   (&key
    ((:points __points) ())
    ((:transform __transform) (instance geometry_msgs::TransformStamped :init))
    )
   (send-super :init)
   (setq _points __points)
   (setq _transform __transform)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
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
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; geometry_msgs/TransformStamped _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/TransformStamped _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/TransformStamped _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(defclass tf_module::ApplyTransformResponse
  :super ros::object
  :slots (_new_points ))

(defmethod tf_module::ApplyTransformResponse
  (:init
   (&key
    ((:new_points __new_points) ())
    )
   (send-super :init)
   (setq _new_points __new_points)
   self)
  (:new_points
   (&rest __new_points)
   (if (keywordp (car __new_points))
       (send* _new_points __new_points)
     (progn
       (if __new_points (setq _new_points (car __new_points)))
       _new_points)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _new_points
    (apply #'+ (send-all _new_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _new_points
     (write-long (length _new_points) s)
     (dolist (elem _new_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _new_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _new_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _new_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass tf_module::ApplyTransform
  :super ros::object
  :slots ())

(setf (get tf_module::ApplyTransform :md5sum-) "c6933f0498951dc1d2bc762ddd9384e5")
(setf (get tf_module::ApplyTransform :datatype-) "tf_module/ApplyTransform")
(setf (get tf_module::ApplyTransform :request) tf_module::ApplyTransformRequest)
(setf (get tf_module::ApplyTransform :response) tf_module::ApplyTransformResponse)

(defmethod tf_module::ApplyTransformRequest
  (:response () (instance tf_module::ApplyTransformResponse :init)))

(setf (get tf_module::ApplyTransformRequest :md5sum-) "c6933f0498951dc1d2bc762ddd9384e5")
(setf (get tf_module::ApplyTransformRequest :datatype-) "tf_module/ApplyTransformRequest")
(setf (get tf_module::ApplyTransformRequest :definition-)
      "geometry_msgs/Point[] points # point we want to transform
geometry_msgs/TransformStamped transform #the transform we want to use

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
---
geometry_msgs/Point[] new_points # the transformed point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get tf_module::ApplyTransformResponse :md5sum-) "c6933f0498951dc1d2bc762ddd9384e5")
(setf (get tf_module::ApplyTransformResponse :datatype-) "tf_module/ApplyTransformResponse")
(setf (get tf_module::ApplyTransformResponse :definition-)
      "geometry_msgs/Point[] points # point we want to transform
geometry_msgs/TransformStamped transform #the transform we want to use

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
---
geometry_msgs/Point[] new_points # the transformed point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :tf_module/ApplyTransform "c6933f0498951dc1d2bc762ddd9384e5")


