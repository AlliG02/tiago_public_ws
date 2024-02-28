;; Auto-generated. Do not edit!


(when (boundp 'lasr_vision_msgs::ColourPrediction)
  (if (not (find-package "LASR_VISION_MSGS"))
    (make-package "LASR_VISION_MSGS"))
  (shadow 'ColourPrediction (find-package "LASR_VISION_MSGS")))
(unless (find-package "LASR_VISION_MSGS::COLOURPREDICTION")
  (make-package "LASR_VISION_MSGS::COLOURPREDICTION"))

(in-package "ROS")
;;//! \htmlinclude ColourPrediction.msg.html


(defclass lasr_vision_msgs::ColourPrediction
  :super ros::object
  :slots (_colour _distance ))

(defmethod lasr_vision_msgs::ColourPrediction
  (:init
   (&key
    ((:colour __colour) "")
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _colour (string __colour))
   (setq _distance (float __distance))
   self)
  (:colour
   (&optional __colour)
   (if __colour (setq _colour __colour)) _colour)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; string _colour
    4 (length _colour)
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _colour
       (write-long (length _colour) s) (princ _colour s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _colour
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _colour (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lasr_vision_msgs::ColourPrediction :md5sum-) "15992d44b8e8edf9dc8c9010c5b9d91c")
(setf (get lasr_vision_msgs::ColourPrediction :datatype-) "lasr_vision_msgs/ColourPrediction")
(setf (get lasr_vision_msgs::ColourPrediction :definition-)
      "# Colour
string colour

# Distance to the colour
#
# Lower = higher chance
float32 distance

")



(provide :lasr_vision_msgs/ColourPrediction "15992d44b8e8edf9dc8c9010c5b9d91c")


