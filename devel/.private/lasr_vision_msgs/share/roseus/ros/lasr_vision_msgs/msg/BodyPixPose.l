;; Auto-generated. Do not edit!


(when (boundp 'lasr_vision_msgs::BodyPixPose)
  (if (not (find-package "LASR_VISION_MSGS"))
    (make-package "LASR_VISION_MSGS"))
  (shadow 'BodyPixPose (find-package "LASR_VISION_MSGS")))
(unless (find-package "LASR_VISION_MSGS::BODYPIXPOSE")
  (make-package "LASR_VISION_MSGS::BODYPIXPOSE"))

(in-package "ROS")
;;//! \htmlinclude BodyPixPose.msg.html


(defclass lasr_vision_msgs::BodyPixPose
  :super ros::object
  :slots ())

(defmethod lasr_vision_msgs::BodyPixPose
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

(setf (get lasr_vision_msgs::BodyPixPose :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get lasr_vision_msgs::BodyPixPose :datatype-) "lasr_vision_msgs/BodyPixPose")
(setf (get lasr_vision_msgs::BodyPixPose :definition-)
      "# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/types.py

")



(provide :lasr_vision_msgs/BodyPixPose "d41d8cd98f00b204e9800998ecf8427e")


