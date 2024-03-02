;; Auto-generated. Do not edit!


(when (boundp 'graph_room_navigation::AddCrossing)
  (if (not (find-package "GRAPH_ROOM_NAVIGATION"))
    (make-package "GRAPH_ROOM_NAVIGATION"))
  (shadow 'AddCrossing (find-package "GRAPH_ROOM_NAVIGATION")))
(unless (find-package "GRAPH_ROOM_NAVIGATION::ADDCROSSING")
  (make-package "GRAPH_ROOM_NAVIGATION::ADDCROSSING"))
(unless (find-package "GRAPH_ROOM_NAVIGATION::ADDCROSSINGREQUEST")
  (make-package "GRAPH_ROOM_NAVIGATION::ADDCROSSINGREQUEST"))
(unless (find-package "GRAPH_ROOM_NAVIGATION::ADDCROSSINGRESPONSE")
  (make-package "GRAPH_ROOM_NAVIGATION::ADDCROSSINGRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass graph_room_navigation::AddCrossingRequest
  :super ros::object
  :slots (_room1 _door1 _room2 _door2 ))

(defmethod graph_room_navigation::AddCrossingRequest
  (:init
   (&key
    ((:room1 __room1) "")
    ((:door1 __door1) (instance geometry_msgs::Point :init))
    ((:room2 __room2) "")
    ((:door2 __door2) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _room1 (string __room1))
   (setq _door1 __door1)
   (setq _room2 (string __room2))
   (setq _door2 __door2)
   self)
  (:room1
   (&optional __room1)
   (if __room1 (setq _room1 __room1)) _room1)
  (:door1
   (&rest __door1)
   (if (keywordp (car __door1))
       (send* _door1 __door1)
     (progn
       (if __door1 (setq _door1 (car __door1)))
       _door1)))
  (:room2
   (&optional __room2)
   (if __room2 (setq _room2 __room2)) _room2)
  (:door2
   (&rest __door2)
   (if (keywordp (car __door2))
       (send* _door2 __door2)
     (progn
       (if __door2 (setq _door2 (car __door2)))
       _door2)))
  (:serialization-length
   ()
   (+
    ;; string _room1
    4 (length _room1)
    ;; geometry_msgs/Point _door1
    (send _door1 :serialization-length)
    ;; string _room2
    4 (length _room2)
    ;; geometry_msgs/Point _door2
    (send _door2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _room1
       (write-long (length _room1) s) (princ _room1 s)
     ;; geometry_msgs/Point _door1
       (send _door1 :serialize s)
     ;; string _room2
       (write-long (length _room2) s) (princ _room2 s)
     ;; geometry_msgs/Point _door2
       (send _door2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _room1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _room1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _door1
     (send _door1 :deserialize buf ptr-) (incf ptr- (send _door1 :serialization-length))
   ;; string _room2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _room2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _door2
     (send _door2 :deserialize buf ptr-) (incf ptr- (send _door2 :serialization-length))
   ;;
   self)
  )

(defclass graph_room_navigation::AddCrossingResponse
  :super ros::object
  :slots (_success ))

(defmethod graph_room_navigation::AddCrossingResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass graph_room_navigation::AddCrossing
  :super ros::object
  :slots ())

(setf (get graph_room_navigation::AddCrossing :md5sum-) "dc1dde44f0b634a483bc0645dd3270ce")
(setf (get graph_room_navigation::AddCrossing :datatype-) "graph_room_navigation/AddCrossing")
(setf (get graph_room_navigation::AddCrossing :request) graph_room_navigation::AddCrossingRequest)
(setf (get graph_room_navigation::AddCrossing :response) graph_room_navigation::AddCrossingResponse)

(defmethod graph_room_navigation::AddCrossingRequest
  (:response () (instance graph_room_navigation::AddCrossingResponse :init)))

(setf (get graph_room_navigation::AddCrossingRequest :md5sum-) "dc1dde44f0b634a483bc0645dd3270ce")
(setf (get graph_room_navigation::AddCrossingRequest :datatype-) "graph_room_navigation/AddCrossingRequest")
(setf (get graph_room_navigation::AddCrossingRequest :definition-)
      "string room1
geometry_msgs/Point door1
string room2
geometry_msgs/Point door2

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")

(setf (get graph_room_navigation::AddCrossingResponse :md5sum-) "dc1dde44f0b634a483bc0645dd3270ce")
(setf (get graph_room_navigation::AddCrossingResponse :datatype-) "graph_room_navigation/AddCrossingResponse")
(setf (get graph_room_navigation::AddCrossingResponse :definition-)
      "string room1
geometry_msgs/Point door1
string room2
geometry_msgs/Point door2

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")



(provide :graph_room_navigation/AddCrossing "dc1dde44f0b634a483bc0645dd3270ce")


