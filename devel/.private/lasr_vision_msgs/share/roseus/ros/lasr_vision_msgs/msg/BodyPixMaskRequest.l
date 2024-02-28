;; Auto-generated. Do not edit!


(when (boundp 'lasr_vision_msgs::BodyPixMaskRequest)
  (if (not (find-package "LASR_VISION_MSGS"))
    (make-package "LASR_VISION_MSGS"))
  (shadow 'BodyPixMaskRequest (find-package "LASR_VISION_MSGS")))
(unless (find-package "LASR_VISION_MSGS::BODYPIXMASKREQUEST")
  (make-package "LASR_VISION_MSGS::BODYPIXMASKREQUEST"))

(in-package "ROS")
;;//! \htmlinclude BodyPixMaskRequest.msg.html


(defclass lasr_vision_msgs::BodyPixMaskRequest
  :super ros::object
  :slots (_parts ))

(defmethod lasr_vision_msgs::BodyPixMaskRequest
  (:init
   (&key
    ((:parts __parts) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _parts __parts)
   self)
  (:parts
   (&optional __parts)
   (if __parts (setq _parts __parts)) _parts)
  (:serialization-length
   ()
   (+
    ;; string[] _parts
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _parts)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _parts
     (write-long (length _parts) s)
     (dolist (elem _parts)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _parts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parts (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _parts i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get lasr_vision_msgs::BodyPixMaskRequest :md5sum-) "61920c0acc31cd7d2b61692a8f73f78b")
(setf (get lasr_vision_msgs::BodyPixMaskRequest :datatype-) "lasr_vision_msgs/BodyPixMaskRequest")
(setf (get lasr_vision_msgs::BodyPixMaskRequest :definition-)
      "# List of parts
#
# A full list is available here:
# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/part_channels.py#L5
string[] parts

")



(provide :lasr_vision_msgs/BodyPixMaskRequest "61920c0acc31cd7d2b61692a8f73f78b")


