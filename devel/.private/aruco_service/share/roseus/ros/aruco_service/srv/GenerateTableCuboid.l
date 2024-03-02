;; Auto-generated. Do not edit!


(when (boundp 'aruco_service::GenerateTableCuboid)
  (if (not (find-package "ARUCO_SERVICE"))
    (make-package "ARUCO_SERVICE"))
  (shadow 'GenerateTableCuboid (find-package "ARUCO_SERVICE")))
(unless (find-package "ARUCO_SERVICE::GENERATETABLECUBOID")
  (make-package "ARUCO_SERVICE::GENERATETABLECUBOID"))
(unless (find-package "ARUCO_SERVICE::GENERATETABLECUBOIDREQUEST")
  (make-package "ARUCO_SERVICE::GENERATETABLECUBOIDREQUEST"))
(unless (find-package "ARUCO_SERVICE::GENERATETABLECUBOIDRESPONSE")
  (make-package "ARUCO_SERVICE::GENERATETABLECUBOIDRESPONSE"))

(in-package "ROS")





(defclass aruco_service::GenerateTableCuboidRequest
  :super ros::object
  :slots (_table _long_side _short_side _padding _is_rect _radius ))

(defmethod aruco_service::GenerateTableCuboidRequest
  (:init
   (&key
    ((:table __table) 0)
    ((:long_side __long_side) 0.0)
    ((:short_side __short_side) 0.0)
    ((:padding __padding) 0.0)
    ((:is_rect __is_rect) nil)
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _table (round __table))
   (setq _long_side (float __long_side))
   (setq _short_side (float __short_side))
   (setq _padding (float __padding))
   (setq _is_rect __is_rect)
   (setq _radius (float __radius))
   self)
  (:table
   (&optional __table)
   (if __table (setq _table __table)) _table)
  (:long_side
   (&optional __long_side)
   (if __long_side (setq _long_side __long_side)) _long_side)
  (:short_side
   (&optional __short_side)
   (if __short_side (setq _short_side __short_side)) _short_side)
  (:padding
   (&optional __padding)
   (if __padding (setq _padding __padding)) _padding)
  (:is_rect
   (&optional (__is_rect :null))
   (if (not (eq __is_rect :null)) (setq _is_rect __is_rect)) _is_rect)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; int8 _table
    1
    ;; float64 _long_side
    8
    ;; float64 _short_side
    8
    ;; float64 _padding
    8
    ;; bool _is_rect
    1
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _table
       (write-byte _table s)
     ;; float64 _long_side
       (sys::poke _long_side (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _short_side
       (sys::poke _short_side (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _padding
       (sys::poke _padding (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_rect
       (if _is_rect (write-byte -1 s) (write-byte 0 s))
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _table
     (setq _table (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _table 127) (setq _table (- _table 256)))
   ;; float64 _long_side
     (setq _long_side (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _short_side
     (setq _short_side (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _padding
     (setq _padding (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_rect
     (setq _is_rect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass aruco_service::GenerateTableCuboidResponse
  :super ros::object
  :slots (_success ))

(defmethod aruco_service::GenerateTableCuboidResponse
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

(defclass aruco_service::GenerateTableCuboid
  :super ros::object
  :slots ())

(setf (get aruco_service::GenerateTableCuboid :md5sum-) "2c1fa4b624df92535558f89b72b88a87")
(setf (get aruco_service::GenerateTableCuboid :datatype-) "aruco_service/GenerateTableCuboid")
(setf (get aruco_service::GenerateTableCuboid :request) aruco_service::GenerateTableCuboidRequest)
(setf (get aruco_service::GenerateTableCuboid :response) aruco_service::GenerateTableCuboidResponse)

(defmethod aruco_service::GenerateTableCuboidRequest
  (:response () (instance aruco_service::GenerateTableCuboidResponse :init)))

(setf (get aruco_service::GenerateTableCuboidRequest :md5sum-) "2c1fa4b624df92535558f89b72b88a87")
(setf (get aruco_service::GenerateTableCuboidRequest :datatype-) "aruco_service/GenerateTableCuboidRequest")
(setf (get aruco_service::GenerateTableCuboidRequest :definition-)
      "int8 table
float64 long_side
float64 short_side
float64 padding
bool is_rect
float64 radius
---
bool success
")

(setf (get aruco_service::GenerateTableCuboidResponse :md5sum-) "2c1fa4b624df92535558f89b72b88a87")
(setf (get aruco_service::GenerateTableCuboidResponse :datatype-) "aruco_service/GenerateTableCuboidResponse")
(setf (get aruco_service::GenerateTableCuboidResponse :definition-)
      "int8 table
float64 long_side
float64 short_side
float64 padding
bool is_rect
float64 radius
---
bool success
")



(provide :aruco_service/GenerateTableCuboid "2c1fa4b624df92535558f89b72b88a87")


