;; Auto-generated. Do not edit!


(when (boundp 'narrow_space_navigation::HeightMap)
  (if (not (find-package "NARROW_SPACE_NAVIGATION"))
    (make-package "NARROW_SPACE_NAVIGATION"))
  (shadow 'HeightMap (find-package "NARROW_SPACE_NAVIGATION")))
(unless (find-package "NARROW_SPACE_NAVIGATION::HEIGHTMAP")
  (make-package "NARROW_SPACE_NAVIGATION::HEIGHTMAP"))
(unless (find-package "NARROW_SPACE_NAVIGATION::HEIGHTMAPREQUEST")
  (make-package "NARROW_SPACE_NAVIGATION::HEIGHTMAPREQUEST"))
(unless (find-package "NARROW_SPACE_NAVIGATION::HEIGHTMAPRESPONSE")
  (make-package "NARROW_SPACE_NAVIGATION::HEIGHTMAPRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass narrow_space_navigation::HeightMapRequest
  :super ros::object
  :slots (_points _warped _timestamp ))

(defmethod narrow_space_navigation::HeightMapRequest
  (:init
   (&key
    ((:points __points) (make-array 0 :initial-element 0 :element-type :integer))
    ((:warped __warped) (make-array 0 :initial-element 0 :element-type :integer))
    ((:timestamp __timestamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _points __points)
   (setq _warped __warped)
   (setq _timestamp __timestamp)
   self)
  (:points
   (&optional __points)
   (if __points (setq _points __points)) _points)
  (:warped
   (&optional __warped)
   (if __warped (setq _warped __warped)) _warped)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; int32[] _points
    (* 4    (length _points)) 4
    ;; int32[] _warped
    (* 4    (length _warped)) 4
    ;; time _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _points
     (write-long (length _points) s)
     (dotimes (i (length _points))
       (write-long (elt _points i) s)
       )
     ;; int32[] _warped
     (write-long (length _warped) s)
     (dotimes (i (length _warped))
       (write-long (elt _warped i) s)
       )
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _points i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _warped
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _warped (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _warped i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass narrow_space_navigation::HeightMapResponse
  :super ros::object
  :slots (_status _pose ))

(defmethod narrow_space_navigation::HeightMapResponse
  (:init
   (&key
    ((:status __status) nil)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _status __status)
   (setq _pose __pose)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass narrow_space_navigation::HeightMap
  :super ros::object
  :slots ())

(setf (get narrow_space_navigation::HeightMap :md5sum-) "27bdf174dd2ab3aff4c8eca33f7ed90f")
(setf (get narrow_space_navigation::HeightMap :datatype-) "narrow_space_navigation/HeightMap")
(setf (get narrow_space_navigation::HeightMap :request) narrow_space_navigation::HeightMapRequest)
(setf (get narrow_space_navigation::HeightMap :response) narrow_space_navigation::HeightMapResponse)

(defmethod narrow_space_navigation::HeightMapRequest
  (:response () (instance narrow_space_navigation::HeightMapResponse :init)))

(setf (get narrow_space_navigation::HeightMapRequest :md5sum-) "27bdf174dd2ab3aff4c8eca33f7ed90f")
(setf (get narrow_space_navigation::HeightMapRequest :datatype-) "narrow_space_navigation/HeightMapRequest")
(setf (get narrow_space_navigation::HeightMapRequest :definition-)
      "int32[] points
int32[] warped
time timestamp
# nav_msgs/OccupancyGrid warped
---
bool status
geometry_msgs/Pose pose



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
")

(setf (get narrow_space_navigation::HeightMapResponse :md5sum-) "27bdf174dd2ab3aff4c8eca33f7ed90f")
(setf (get narrow_space_navigation::HeightMapResponse :datatype-) "narrow_space_navigation/HeightMapResponse")
(setf (get narrow_space_navigation::HeightMapResponse :definition-)
      "int32[] points
int32[] warped
time timestamp
# nav_msgs/OccupancyGrid warped
---
bool status
geometry_msgs/Pose pose



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
")



(provide :narrow_space_navigation/HeightMap "27bdf174dd2ab3aff4c8eca33f7ed90f")


