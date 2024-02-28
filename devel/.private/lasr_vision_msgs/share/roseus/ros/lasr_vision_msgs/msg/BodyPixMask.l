;; Auto-generated. Do not edit!


(when (boundp 'lasr_vision_msgs::BodyPixMask)
  (if (not (find-package "LASR_VISION_MSGS"))
    (make-package "LASR_VISION_MSGS"))
  (shadow 'BodyPixMask (find-package "LASR_VISION_MSGS")))
(unless (find-package "LASR_VISION_MSGS::BODYPIXMASK")
  (make-package "LASR_VISION_MSGS::BODYPIXMASK"))

(in-package "ROS")
;;//! \htmlinclude BodyPixMask.msg.html


(defclass lasr_vision_msgs::BodyPixMask
  :super ros::object
  :slots (_mask _shape ))

(defmethod lasr_vision_msgs::BodyPixMask
  (:init
   (&key
    ((:mask __mask) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:shape __shape) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _mask __mask)
   (setq _shape __shape)
   self)
  (:mask
   (&optional __mask)
   (if __mask (setq _mask __mask)) _mask)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:serialization-length
   ()
   (+
    ;; bool[] _mask
    (* 1    (length _mask)) 4
    ;; uint32[] _shape
    (* 4    (length _shape)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _mask
     (write-long (length _mask) s)
     (dotimes (i (length _mask))
       (if (elt _mask i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint32[] _shape
     (write-long (length _shape) s)
     (dotimes (i (length _shape))
       (write-long (elt _shape i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _mask
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mask (make-list n))
     (dotimes (i n)
     (setf (elt _mask i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint32[] _shape
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _shape i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get lasr_vision_msgs::BodyPixMask :md5sum-) "7cdf7dd251c64f79d405b25f2b6644fa")
(setf (get lasr_vision_msgs::BodyPixMask :datatype-) "lasr_vision_msgs/BodyPixMask")
(setf (get lasr_vision_msgs::BodyPixMask :definition-)
      "# 1D array of mask
bool[] mask

# Shape
#
# Use in mask.reshape(...shape) to get back 2D array of mask
uint32[] shape

")



(provide :lasr_vision_msgs/BodyPixMask "7cdf7dd251c64f79d405b25f2b6644fa")


