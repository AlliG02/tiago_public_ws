;; Auto-generated. Do not edit!


(when (boundp 'lasr_vision_msgs::FeatureWithColour)
  (if (not (find-package "LASR_VISION_MSGS"))
    (make-package "LASR_VISION_MSGS"))
  (shadow 'FeatureWithColour (find-package "LASR_VISION_MSGS")))
(unless (find-package "LASR_VISION_MSGS::FEATUREWITHCOLOUR")
  (make-package "LASR_VISION_MSGS::FEATUREWITHCOLOUR"))

(in-package "ROS")
;;//! \htmlinclude FeatureWithColour.msg.html


(defclass lasr_vision_msgs::FeatureWithColour
  :super ros::object
  :slots (_name _colours ))

(defmethod lasr_vision_msgs::FeatureWithColour
  (:init
   (&key
    ((:name __name) "")
    ((:colours __colours) ())
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _colours __colours)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:colours
   (&rest __colours)
   (if (keywordp (car __colours))
       (send* _colours __colours)
     (progn
       (if __colours (setq _colours (car __colours)))
       _colours)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; lasr_vision_msgs/ColourPrediction[] _colours
    (apply #'+ (send-all _colours :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; lasr_vision_msgs/ColourPrediction[] _colours
     (write-long (length _colours) s)
     (dolist (elem _colours)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; lasr_vision_msgs/ColourPrediction[] _colours
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _colours (let (r) (dotimes (i n) (push (instance lasr_vision_msgs::ColourPrediction :init) r)) r))
     (dolist (elem- _colours)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lasr_vision_msgs::FeatureWithColour :md5sum-) "559e97f1ed0bbb763b8f3f59434ad208")
(setf (get lasr_vision_msgs::FeatureWithColour :datatype-) "lasr_vision_msgs/FeatureWithColour")
(setf (get lasr_vision_msgs::FeatureWithColour :definition-)
      "# Feature name
string name

# Colour predictions
lasr_vision_msgs/ColourPrediction[] colours

================================================================================
MSG: lasr_vision_msgs/ColourPrediction
# Colour
string colour

# Distance to the colour
#
# Lower = higher chance
float32 distance

")



(provide :lasr_vision_msgs/FeatureWithColour "559e97f1ed0bbb763b8f3f59434ad208")


