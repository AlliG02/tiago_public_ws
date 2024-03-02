;; Auto-generated. Do not edit!


(when (boundp 'graph_room_navigation::PlanToPoint)
  (if (not (find-package "GRAPH_ROOM_NAVIGATION"))
    (make-package "GRAPH_ROOM_NAVIGATION"))
  (shadow 'PlanToPoint (find-package "GRAPH_ROOM_NAVIGATION")))
(unless (find-package "GRAPH_ROOM_NAVIGATION::PLANTOPOINT")
  (make-package "GRAPH_ROOM_NAVIGATION::PLANTOPOINT"))
(unless (find-package "GRAPH_ROOM_NAVIGATION::PLANTOPOINTREQUEST")
  (make-package "GRAPH_ROOM_NAVIGATION::PLANTOPOINTREQUEST"))
(unless (find-package "GRAPH_ROOM_NAVIGATION::PLANTOPOINTRESPONSE")
  (make-package "GRAPH_ROOM_NAVIGATION::PLANTOPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass graph_room_navigation::PlanToPointRequest
  :super ros::object
  :slots (_goal ))

(defmethod graph_room_navigation::PlanToPointRequest
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass graph_room_navigation::PlanToPointResponse
  :super ros::object
  :slots (_points _success ))

(defmethod graph_room_navigation::PlanToPointResponse
  (:init
   (&key
    ((:points __points) ())
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _points __points)
   (setq _success __success)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; bool _success
    1
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
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass graph_room_navigation::PlanToPoint
  :super ros::object
  :slots ())

(setf (get graph_room_navigation::PlanToPoint :md5sum-) "b4e6b6656aa551fdc5d5b4c72e95d532")
(setf (get graph_room_navigation::PlanToPoint :datatype-) "graph_room_navigation/PlanToPoint")
(setf (get graph_room_navigation::PlanToPoint :request) graph_room_navigation::PlanToPointRequest)
(setf (get graph_room_navigation::PlanToPoint :response) graph_room_navigation::PlanToPointResponse)

(defmethod graph_room_navigation::PlanToPointRequest
  (:response () (instance graph_room_navigation::PlanToPointResponse :init)))

(setf (get graph_room_navigation::PlanToPointRequest :md5sum-) "b4e6b6656aa551fdc5d5b4c72e95d532")
(setf (get graph_room_navigation::PlanToPointRequest :datatype-) "graph_room_navigation/PlanToPointRequest")
(setf (get graph_room_navigation::PlanToPointRequest :definition-)
      "geometry_msgs/Point goal

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point[] points
bool success

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get graph_room_navigation::PlanToPointResponse :md5sum-) "b4e6b6656aa551fdc5d5b4c72e95d532")
(setf (get graph_room_navigation::PlanToPointResponse :datatype-) "graph_room_navigation/PlanToPointResponse")
(setf (get graph_room_navigation::PlanToPointResponse :definition-)
      "geometry_msgs/Point goal

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point[] points
bool success

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :graph_room_navigation/PlanToPoint "b4e6b6656aa551fdc5d5b4c72e95d532")


