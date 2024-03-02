;; Auto-generated. Do not edit!


(when (boundp 'graph_room_navigation::PlanToRoom)
  (if (not (find-package "GRAPH_ROOM_NAVIGATION"))
    (make-package "GRAPH_ROOM_NAVIGATION"))
  (shadow 'PlanToRoom (find-package "GRAPH_ROOM_NAVIGATION")))
(unless (find-package "GRAPH_ROOM_NAVIGATION::PLANTOROOM")
  (make-package "GRAPH_ROOM_NAVIGATION::PLANTOROOM"))
(unless (find-package "GRAPH_ROOM_NAVIGATION::PLANTOROOMREQUEST")
  (make-package "GRAPH_ROOM_NAVIGATION::PLANTOROOMREQUEST"))
(unless (find-package "GRAPH_ROOM_NAVIGATION::PLANTOROOMRESPONSE")
  (make-package "GRAPH_ROOM_NAVIGATION::PLANTOROOMRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass graph_room_navigation::PlanToRoomRequest
  :super ros::object
  :slots (_goal_room ))

(defmethod graph_room_navigation::PlanToRoomRequest
  (:init
   (&key
    ((:goal_room __goal_room) "")
    )
   (send-super :init)
   (setq _goal_room (string __goal_room))
   self)
  (:goal_room
   (&optional __goal_room)
   (if __goal_room (setq _goal_room __goal_room)) _goal_room)
  (:serialization-length
   ()
   (+
    ;; string _goal_room
    4 (length _goal_room)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _goal_room
       (write-long (length _goal_room) s) (princ _goal_room s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _goal_room
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_room (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass graph_room_navigation::PlanToRoomResponse
  :super ros::object
  :slots (_points _success ))

(defmethod graph_room_navigation::PlanToRoomResponse
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

(defclass graph_room_navigation::PlanToRoom
  :super ros::object
  :slots ())

(setf (get graph_room_navigation::PlanToRoom :md5sum-) "b848b1c4724a2cc042af92e9bebe0e39")
(setf (get graph_room_navigation::PlanToRoom :datatype-) "graph_room_navigation/PlanToRoom")
(setf (get graph_room_navigation::PlanToRoom :request) graph_room_navigation::PlanToRoomRequest)
(setf (get graph_room_navigation::PlanToRoom :response) graph_room_navigation::PlanToRoomResponse)

(defmethod graph_room_navigation::PlanToRoomRequest
  (:response () (instance graph_room_navigation::PlanToRoomResponse :init)))

(setf (get graph_room_navigation::PlanToRoomRequest :md5sum-) "b848b1c4724a2cc042af92e9bebe0e39")
(setf (get graph_room_navigation::PlanToRoomRequest :datatype-) "graph_room_navigation/PlanToRoomRequest")
(setf (get graph_room_navigation::PlanToRoomRequest :definition-)
      "string goal_room
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

(setf (get graph_room_navigation::PlanToRoomResponse :md5sum-) "b848b1c4724a2cc042af92e9bebe0e39")
(setf (get graph_room_navigation::PlanToRoomResponse :datatype-) "graph_room_navigation/PlanToRoomResponse")
(setf (get graph_room_navigation::PlanToRoomResponse :definition-)
      "string goal_room
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



(provide :graph_room_navigation/PlanToRoom "b848b1c4724a2cc042af92e9bebe0e39")


