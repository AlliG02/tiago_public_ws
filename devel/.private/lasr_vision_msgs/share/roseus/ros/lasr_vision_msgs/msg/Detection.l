;; Auto-generated. Do not edit!


(when (boundp 'lasr_vision_msgs::Detection)
  (if (not (find-package "LASR_VISION_MSGS"))
    (make-package "LASR_VISION_MSGS"))
  (shadow 'Detection (find-package "LASR_VISION_MSGS")))
(unless (find-package "LASR_VISION_MSGS::DETECTION")
  (make-package "LASR_VISION_MSGS::DETECTION"))

(in-package "ROS")
;;//! \htmlinclude Detection.msg.html


(defclass lasr_vision_msgs::Detection
  :super ros::object
  :slots (_name _confidence _xywh _xyseg ))

(defmethod lasr_vision_msgs::Detection
  (:init
   (&key
    ((:name __name) "")
    ((:confidence __confidence) 0.0)
    ((:xywh __xywh) (make-array 0 :initial-element 0 :element-type :integer))
    ((:xyseg __xyseg) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _confidence (float __confidence))
   (setq _xywh __xywh)
   (setq _xyseg __xyseg)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:xywh
   (&optional __xywh)
   (if __xywh (setq _xywh __xywh)) _xywh)
  (:xyseg
   (&optional __xyseg)
   (if __xyseg (setq _xyseg __xyseg)) _xyseg)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _confidence
    4
    ;; int32[] _xywh
    (* 4    (length _xywh)) 4
    ;; int32[] _xyseg
    (* 4    (length _xyseg)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32[] _xywh
     (write-long (length _xywh) s)
     (dotimes (i (length _xywh))
       (write-long (elt _xywh i) s)
       )
     ;; int32[] _xyseg
     (write-long (length _xyseg) s)
     (dotimes (i (length _xyseg))
       (write-long (elt _xyseg i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32[] _xywh
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xywh (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _xywh i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _xyseg
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xyseg (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _xyseg i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get lasr_vision_msgs::Detection :md5sum-) "61d9584ca7ba067a2cddb1ec142f3727")
(setf (get lasr_vision_msgs::Detection :datatype-) "lasr_vision_msgs/Detection")
(setf (get lasr_vision_msgs::Detection :definition-)
      "# Detected Object Class
string name

# How certain we are this is what we think it is
float32 confidence

# Bounding box mask defined in pixel-space
int32[] xywh

# Segmentation mask defined in pixel-space
#
# This will be empty if a segmentation model was not used
int32[] xyseg

")



(provide :lasr_vision_msgs/Detection "61d9584ca7ba067a2cddb1ec142f3727")


