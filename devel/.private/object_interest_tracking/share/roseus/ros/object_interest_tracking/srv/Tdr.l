;; Auto-generated. Do not edit!


(when (boundp 'object_interest_tracking::Tdr)
  (if (not (find-package "OBJECT_INTEREST_TRACKING"))
    (make-package "OBJECT_INTEREST_TRACKING"))
  (shadow 'Tdr (find-package "OBJECT_INTEREST_TRACKING")))
(unless (find-package "OBJECT_INTEREST_TRACKING::TDR")
  (make-package "OBJECT_INTEREST_TRACKING::TDR"))
(unless (find-package "OBJECT_INTEREST_TRACKING::TDRREQUEST")
  (make-package "OBJECT_INTEREST_TRACKING::TDRREQUEST"))
(unless (find-package "OBJECT_INTEREST_TRACKING::TDRRESPONSE")
  (make-package "OBJECT_INTEREST_TRACKING::TDRRESPONSE"))

(in-package "ROS")





(defclass object_interest_tracking::TdrRequest
  :super ros::object
  :slots ())

(defmethod object_interest_tracking::TdrRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass object_interest_tracking::TdrResponse
  :super ros::object
  :slots ())

(defmethod object_interest_tracking::TdrResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass object_interest_tracking::Tdr
  :super ros::object
  :slots ())

(setf (get object_interest_tracking::Tdr :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get object_interest_tracking::Tdr :datatype-) "object_interest_tracking/Tdr")
(setf (get object_interest_tracking::Tdr :request) object_interest_tracking::TdrRequest)
(setf (get object_interest_tracking::Tdr :response) object_interest_tracking::TdrResponse)

(defmethod object_interest_tracking::TdrRequest
  (:response () (instance object_interest_tracking::TdrResponse :init)))

(setf (get object_interest_tracking::TdrRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get object_interest_tracking::TdrRequest :datatype-) "object_interest_tracking/TdrRequest")
(setf (get object_interest_tracking::TdrRequest :definition-)
      "---
")

(setf (get object_interest_tracking::TdrResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get object_interest_tracking::TdrResponse :datatype-) "object_interest_tracking/TdrResponse")
(setf (get object_interest_tracking::TdrResponse :definition-)
      "---
")



(provide :object_interest_tracking/Tdr "d41d8cd98f00b204e9800998ecf8427e")


