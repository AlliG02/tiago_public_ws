;; Auto-generated. Do not edit!


(when (boundp 'aruco_service::PublishTablePoints)
  (if (not (find-package "ARUCO_SERVICE"))
    (make-package "ARUCO_SERVICE"))
  (shadow 'PublishTablePoints (find-package "ARUCO_SERVICE")))
(unless (find-package "ARUCO_SERVICE::PUBLISHTABLEPOINTS")
  (make-package "ARUCO_SERVICE::PUBLISHTABLEPOINTS"))
(unless (find-package "ARUCO_SERVICE::PUBLISHTABLEPOINTSREQUEST")
  (make-package "ARUCO_SERVICE::PUBLISHTABLEPOINTSREQUEST"))
(unless (find-package "ARUCO_SERVICE::PUBLISHTABLEPOINTSRESPONSE")
  (make-package "ARUCO_SERVICE::PUBLISHTABLEPOINTSRESPONSE"))

(in-package "ROS")





(defclass aruco_service::PublishTablePointsRequest
  :super ros::object
  :slots (_table ))

(defmethod aruco_service::PublishTablePointsRequest
  (:init
   (&key
    ((:table __table) 0)
    )
   (send-super :init)
   (setq _table (round __table))
   self)
  (:table
   (&optional __table)
   (if __table (setq _table __table)) _table)
  (:serialization-length
   ()
   (+
    ;; int8 _table
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _table
       (write-byte _table s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _table
     (setq _table (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _table 127) (setq _table (- _table 256)))
   ;;
   self)
  )

(defclass aruco_service::PublishTablePointsResponse
  :super ros::object
  :slots (_success ))

(defmethod aruco_service::PublishTablePointsResponse
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

(defclass aruco_service::PublishTablePoints
  :super ros::object
  :slots ())

(setf (get aruco_service::PublishTablePoints :md5sum-) "4eaecc5d02ae2f2661dfa53121841fde")
(setf (get aruco_service::PublishTablePoints :datatype-) "aruco_service/PublishTablePoints")
(setf (get aruco_service::PublishTablePoints :request) aruco_service::PublishTablePointsRequest)
(setf (get aruco_service::PublishTablePoints :response) aruco_service::PublishTablePointsResponse)

(defmethod aruco_service::PublishTablePointsRequest
  (:response () (instance aruco_service::PublishTablePointsResponse :init)))

(setf (get aruco_service::PublishTablePointsRequest :md5sum-) "4eaecc5d02ae2f2661dfa53121841fde")
(setf (get aruco_service::PublishTablePointsRequest :datatype-) "aruco_service/PublishTablePointsRequest")
(setf (get aruco_service::PublishTablePointsRequest :definition-)
      "int8 table
---
bool success
")

(setf (get aruco_service::PublishTablePointsResponse :md5sum-) "4eaecc5d02ae2f2661dfa53121841fde")
(setf (get aruco_service::PublishTablePointsResponse :datatype-) "aruco_service/PublishTablePointsResponse")
(setf (get aruco_service::PublishTablePointsResponse :definition-)
      "int8 table
---
bool success
")



(provide :aruco_service/PublishTablePoints "4eaecc5d02ae2f2661dfa53121841fde")


