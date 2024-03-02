;; Auto-generated. Do not edit!


(when (boundp 'graph_room_navigation::AddRoom)
  (if (not (find-package "GRAPH_ROOM_NAVIGATION"))
    (make-package "GRAPH_ROOM_NAVIGATION"))
  (shadow 'AddRoom (find-package "GRAPH_ROOM_NAVIGATION")))
(unless (find-package "GRAPH_ROOM_NAVIGATION::ADDROOM")
  (make-package "GRAPH_ROOM_NAVIGATION::ADDROOM"))
(unless (find-package "GRAPH_ROOM_NAVIGATION::ADDROOMREQUEST")
  (make-package "GRAPH_ROOM_NAVIGATION::ADDROOMREQUEST"))
(unless (find-package "GRAPH_ROOM_NAVIGATION::ADDROOMRESPONSE")
  (make-package "GRAPH_ROOM_NAVIGATION::ADDROOMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass graph_room_navigation::AddRoomRequest
  :super ros::object
  :slots (_name _a _b ))

(defmethod graph_room_navigation::AddRoomRequest
  (:init
   (&key
    ((:name __name) "")
    ((:a __a) (instance geometry_msgs::Point :init))
    ((:b __b) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _a __a)
   (setq _b __b)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:a
   (&rest __a)
   (if (keywordp (car __a))
       (send* _a __a)
     (progn
       (if __a (setq _a (car __a)))
       _a)))
  (:b
   (&rest __b)
   (if (keywordp (car __b))
       (send* _b __b)
     (progn
       (if __b (setq _b (car __b)))
       _b)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Point _a
    (send _a :serialization-length)
    ;; geometry_msgs/Point _b
    (send _b :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Point _a
       (send _a :serialize s)
     ;; geometry_msgs/Point _b
       (send _b :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;; geometry_msgs/Point _b
     (send _b :deserialize buf ptr-) (incf ptr- (send _b :serialization-length))
   ;;
   self)
  )

(defclass graph_room_navigation::AddRoomResponse
  :super ros::object
  :slots (_success ))

(defmethod graph_room_navigation::AddRoomResponse
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

(defclass graph_room_navigation::AddRoom
  :super ros::object
  :slots ())

(setf (get graph_room_navigation::AddRoom :md5sum-) "a8afbfcd27d4409c8fc3633455b491d0")
(setf (get graph_room_navigation::AddRoom :datatype-) "graph_room_navigation/AddRoom")
(setf (get graph_room_navigation::AddRoom :request) graph_room_navigation::AddRoomRequest)
(setf (get graph_room_navigation::AddRoom :response) graph_room_navigation::AddRoomResponse)

(defmethod graph_room_navigation::AddRoomRequest
  (:response () (instance graph_room_navigation::AddRoomResponse :init)))

(setf (get graph_room_navigation::AddRoomRequest :md5sum-) "a8afbfcd27d4409c8fc3633455b491d0")
(setf (get graph_room_navigation::AddRoomRequest :datatype-) "graph_room_navigation/AddRoomRequest")
(setf (get graph_room_navigation::AddRoomRequest :definition-)
      "string name
geometry_msgs/Point a
geometry_msgs/Point b

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")

(setf (get graph_room_navigation::AddRoomResponse :md5sum-) "a8afbfcd27d4409c8fc3633455b491d0")
(setf (get graph_room_navigation::AddRoomResponse :datatype-) "graph_room_navigation/AddRoomResponse")
(setf (get graph_room_navigation::AddRoomResponse :definition-)
      "string name
geometry_msgs/Point a
geometry_msgs/Point b

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")



(provide :graph_room_navigation/AddRoom "a8afbfcd27d4409c8fc3633455b491d0")


