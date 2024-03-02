;; Auto-generated. Do not edit!


(when (boundp 'aruco_service::SaveNavigationPoint)
  (if (not (find-package "ARUCO_SERVICE"))
    (make-package "ARUCO_SERVICE"))
  (shadow 'SaveNavigationPoint (find-package "ARUCO_SERVICE")))
(unless (find-package "ARUCO_SERVICE::SAVENAVIGATIONPOINT")
  (make-package "ARUCO_SERVICE::SAVENAVIGATIONPOINT"))
(unless (find-package "ARUCO_SERVICE::SAVENAVIGATIONPOINTREQUEST")
  (make-package "ARUCO_SERVICE::SAVENAVIGATIONPOINTREQUEST"))
(unless (find-package "ARUCO_SERVICE::SAVENAVIGATIONPOINTRESPONSE")
  (make-package "ARUCO_SERVICE::SAVENAVIGATIONPOINTRESPONSE"))

(in-package "ROS")





(defclass aruco_service::SaveNavigationPointRequest
  :super ros::object
  :slots (_table ))

(defmethod aruco_service::SaveNavigationPointRequest
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

(defclass aruco_service::SaveNavigationPointResponse
  :super ros::object
  :slots (_success ))

(defmethod aruco_service::SaveNavigationPointResponse
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

(defclass aruco_service::SaveNavigationPoint
  :super ros::object
  :slots ())

(setf (get aruco_service::SaveNavigationPoint :md5sum-) "4eaecc5d02ae2f2661dfa53121841fde")
(setf (get aruco_service::SaveNavigationPoint :datatype-) "aruco_service/SaveNavigationPoint")
(setf (get aruco_service::SaveNavigationPoint :request) aruco_service::SaveNavigationPointRequest)
(setf (get aruco_service::SaveNavigationPoint :response) aruco_service::SaveNavigationPointResponse)

(defmethod aruco_service::SaveNavigationPointRequest
  (:response () (instance aruco_service::SaveNavigationPointResponse :init)))

(setf (get aruco_service::SaveNavigationPointRequest :md5sum-) "4eaecc5d02ae2f2661dfa53121841fde")
(setf (get aruco_service::SaveNavigationPointRequest :datatype-) "aruco_service/SaveNavigationPointRequest")
(setf (get aruco_service::SaveNavigationPointRequest :definition-)
      "int8 table
---
bool success
")

(setf (get aruco_service::SaveNavigationPointResponse :md5sum-) "4eaecc5d02ae2f2661dfa53121841fde")
(setf (get aruco_service::SaveNavigationPointResponse :datatype-) "aruco_service/SaveNavigationPointResponse")
(setf (get aruco_service::SaveNavigationPointResponse :definition-)
      "int8 table
---
bool success
")



(provide :aruco_service/SaveNavigationPoint "4eaecc5d02ae2f2661dfa53121841fde")


