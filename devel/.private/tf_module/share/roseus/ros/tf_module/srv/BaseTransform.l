;; Auto-generated. Do not edit!


(when (boundp 'tf_module::BaseTransform)
  (if (not (find-package "TF_MODULE"))
    (make-package "TF_MODULE"))
  (shadow 'BaseTransform (find-package "TF_MODULE")))
(unless (find-package "TF_MODULE::BASETRANSFORM")
  (make-package "TF_MODULE::BASETRANSFORM"))
(unless (find-package "TF_MODULE::BASETRANSFORMREQUEST")
  (make-package "TF_MODULE::BASETRANSFORMREQUEST"))
(unless (find-package "TF_MODULE::BASETRANSFORMRESPONSE")
  (make-package "TF_MODULE::BASETRANSFORMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tf_module::BaseTransformRequest
  :super ros::object
  :slots (_points _frame _target_frame ))

(defmethod tf_module::BaseTransformRequest
  (:init
   (&key
    ((:points __points) ())
    ((:frame __frame) (instance std_msgs::String :init))
    ((:target_frame __target_frame) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _points __points)
   (setq _frame __frame)
   (setq _target_frame __target_frame)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:frame
   (&rest __frame)
   (if (keywordp (car __frame))
       (send* _frame __frame)
     (progn
       (if __frame (setq _frame (car __frame)))
       _frame)))
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
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; std_msgs/String _frame
    (send _frame :serialization-length)
    ;; std_msgs/String _target_frame
    (send _target_frame :serialization-length)
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
     ;; std_msgs/String _frame
       (send _frame :serialize s)
     ;; std_msgs/String _target_frame
       (send _target_frame :serialize s)
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
   ;; std_msgs/String _frame
     (send _frame :deserialize buf ptr-) (incf ptr- (send _frame :serialization-length))
   ;; std_msgs/String _target_frame
     (send _target_frame :deserialize buf ptr-) (incf ptr- (send _target_frame :serialization-length))
   ;;
   self)
  )

(defclass tf_module::BaseTransformResponse
  :super ros::object
  :slots (_new_points ))

(defmethod tf_module::BaseTransformResponse
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
    ;; geometry_msgs/PointStamped[] _new_points
    (apply #'+ (send-all _new_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PointStamped[] _new_points
     (write-long (length _new_points) s)
     (dolist (elem _new_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PointStamped[] _new_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _new_points (let (r) (dotimes (i n) (push (instance geometry_msgs::PointStamped :init) r)) r))
     (dolist (elem- _new_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass tf_module::BaseTransform
  :super ros::object
  :slots ())

(setf (get tf_module::BaseTransform :md5sum-) "e34396cb6a4d6ca05fcd61fe22fd3a11")
(setf (get tf_module::BaseTransform :datatype-) "tf_module/BaseTransform")
(setf (get tf_module::BaseTransform :request) tf_module::BaseTransformRequest)
(setf (get tf_module::BaseTransform :response) tf_module::BaseTransformResponse)

(defmethod tf_module::BaseTransformRequest
  (:response () (instance tf_module::BaseTransformResponse :init)))

(setf (get tf_module::BaseTransformRequest :md5sum-) "e34396cb6a4d6ca05fcd61fe22fd3a11")
(setf (get tf_module::BaseTransformRequest :datatype-) "tf_module/BaseTransformRequest")
(setf (get tf_module::BaseTransformRequest :definition-)
      "geometry_msgs/Point[]         points          # point we want to transform
std_msgs/String               frame           # the frame of the point
std_msgs/String               target_frame    # the frame we want to transform the point to

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/String
string data
---
geometry_msgs/PointStamped[]  new_points      # the transformed point


================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get tf_module::BaseTransformResponse :md5sum-) "e34396cb6a4d6ca05fcd61fe22fd3a11")
(setf (get tf_module::BaseTransformResponse :datatype-) "tf_module/BaseTransformResponse")
(setf (get tf_module::BaseTransformResponse :definition-)
      "geometry_msgs/Point[]         points          # point we want to transform
std_msgs/String               frame           # the frame of the point
std_msgs/String               target_frame    # the frame we want to transform the point to

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/String
string data
---
geometry_msgs/PointStamped[]  new_points      # the transformed point


================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :tf_module/BaseTransform "e34396cb6a4d6ca05fcd61fe22fd3a11")


