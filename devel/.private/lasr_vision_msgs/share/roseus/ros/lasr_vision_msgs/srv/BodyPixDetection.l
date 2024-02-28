;; Auto-generated. Do not edit!


(when (boundp 'lasr_vision_msgs::BodyPixDetection)
  (if (not (find-package "LASR_VISION_MSGS"))
    (make-package "LASR_VISION_MSGS"))
  (shadow 'BodyPixDetection (find-package "LASR_VISION_MSGS")))
(unless (find-package "LASR_VISION_MSGS::BODYPIXDETECTION")
  (make-package "LASR_VISION_MSGS::BODYPIXDETECTION"))
(unless (find-package "LASR_VISION_MSGS::BODYPIXDETECTIONREQUEST")
  (make-package "LASR_VISION_MSGS::BODYPIXDETECTIONREQUEST"))
(unless (find-package "LASR_VISION_MSGS::BODYPIXDETECTIONRESPONSE")
  (make-package "LASR_VISION_MSGS::BODYPIXDETECTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass lasr_vision_msgs::BodyPixDetectionRequest
  :super ros::object
  :slots (_image_raw _dataset _confidence _masks ))

(defmethod lasr_vision_msgs::BodyPixDetectionRequest
  (:init
   (&key
    ((:image_raw __image_raw) (instance sensor_msgs::Image :init))
    ((:dataset __dataset) "")
    ((:confidence __confidence) 0.0)
    ((:masks __masks) ())
    )
   (send-super :init)
   (setq _image_raw __image_raw)
   (setq _dataset (string __dataset))
   (setq _confidence (float __confidence))
   (setq _masks __masks)
   self)
  (:image_raw
   (&rest __image_raw)
   (if (keywordp (car __image_raw))
       (send* _image_raw __image_raw)
     (progn
       (if __image_raw (setq _image_raw (car __image_raw)))
       _image_raw)))
  (:dataset
   (&optional __dataset)
   (if __dataset (setq _dataset __dataset)) _dataset)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:masks
   (&rest __masks)
   (if (keywordp (car __masks))
       (send* _masks __masks)
     (progn
       (if __masks (setq _masks (car __masks)))
       _masks)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image_raw
    (send _image_raw :serialization-length)
    ;; string _dataset
    4 (length _dataset)
    ;; float32 _confidence
    4
    ;; lasr_vision_msgs/BodyPixMaskRequest[] _masks
    (apply #'+ (send-all _masks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image_raw
       (send _image_raw :serialize s)
     ;; string _dataset
       (write-long (length _dataset) s) (princ _dataset s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lasr_vision_msgs/BodyPixMaskRequest[] _masks
     (write-long (length _masks) s)
     (dolist (elem _masks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image_raw
     (send _image_raw :deserialize buf ptr-) (incf ptr- (send _image_raw :serialization-length))
   ;; string _dataset
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dataset (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lasr_vision_msgs/BodyPixMaskRequest[] _masks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _masks (let (r) (dotimes (i n) (push (instance lasr_vision_msgs::BodyPixMaskRequest :init) r)) r))
     (dolist (elem- _masks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lasr_vision_msgs::BodyPixDetectionResponse
  :super ros::object
  :slots (_masks _poses ))

(defmethod lasr_vision_msgs::BodyPixDetectionResponse
  (:init
   (&key
    ((:masks __masks) ())
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _masks __masks)
   (setq _poses __poses)
   self)
  (:masks
   (&rest __masks)
   (if (keywordp (car __masks))
       (send* _masks __masks)
     (progn
       (if __masks (setq _masks (car __masks)))
       _masks)))
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; lasr_vision_msgs/BodyPixMask[] _masks
    (apply #'+ (send-all _masks :serialization-length)) 4
    ;; lasr_vision_msgs/BodyPixPose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lasr_vision_msgs/BodyPixMask[] _masks
     (write-long (length _masks) s)
     (dolist (elem _masks)
       (send elem :serialize s)
       )
     ;; lasr_vision_msgs/BodyPixPose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lasr_vision_msgs/BodyPixMask[] _masks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _masks (let (r) (dotimes (i n) (push (instance lasr_vision_msgs::BodyPixMask :init) r)) r))
     (dolist (elem- _masks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lasr_vision_msgs/BodyPixPose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance lasr_vision_msgs::BodyPixPose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lasr_vision_msgs::BodyPixDetection
  :super ros::object
  :slots ())

(setf (get lasr_vision_msgs::BodyPixDetection :md5sum-) "1aab0085097b15bd22e0c25c6a47130a")
(setf (get lasr_vision_msgs::BodyPixDetection :datatype-) "lasr_vision_msgs/BodyPixDetection")
(setf (get lasr_vision_msgs::BodyPixDetection :request) lasr_vision_msgs::BodyPixDetectionRequest)
(setf (get lasr_vision_msgs::BodyPixDetection :response) lasr_vision_msgs::BodyPixDetectionResponse)

(defmethod lasr_vision_msgs::BodyPixDetectionRequest
  (:response () (instance lasr_vision_msgs::BodyPixDetectionResponse :init)))

(setf (get lasr_vision_msgs::BodyPixDetectionRequest :md5sum-) "1aab0085097b15bd22e0c25c6a47130a")
(setf (get lasr_vision_msgs::BodyPixDetectionRequest :datatype-) "lasr_vision_msgs/BodyPixDetectionRequest")
(setf (get lasr_vision_msgs::BodyPixDetectionRequest :definition-)
      "# Image to run inference on
sensor_msgs/Image image_raw

# BodyPix model to use
string dataset

# How certain the detection should be to include
float32 confidence

# The masks that should be generated
lasr_vision_msgs/BodyPixMaskRequest[] masks

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: lasr_vision_msgs/BodyPixMaskRequest
# List of parts
#
# A full list is available here:
# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/part_channels.py#L5
string[] parts
---
# Generated masks
lasr_vision_msgs/BodyPixMask[] masks

# Pose information
lasr_vision_msgs/BodyPixPose[] poses


================================================================================
MSG: lasr_vision_msgs/BodyPixMask
# 1D array of mask
bool[] mask

# Shape
#
# Use in mask.reshape(...shape) to get back 2D array of mask
uint32[] shape

================================================================================
MSG: lasr_vision_msgs/BodyPixPose
# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/types.py
")

(setf (get lasr_vision_msgs::BodyPixDetectionResponse :md5sum-) "1aab0085097b15bd22e0c25c6a47130a")
(setf (get lasr_vision_msgs::BodyPixDetectionResponse :datatype-) "lasr_vision_msgs/BodyPixDetectionResponse")
(setf (get lasr_vision_msgs::BodyPixDetectionResponse :definition-)
      "# Image to run inference on
sensor_msgs/Image image_raw

# BodyPix model to use
string dataset

# How certain the detection should be to include
float32 confidence

# The masks that should be generated
lasr_vision_msgs/BodyPixMaskRequest[] masks

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: lasr_vision_msgs/BodyPixMaskRequest
# List of parts
#
# A full list is available here:
# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/part_channels.py#L5
string[] parts
---
# Generated masks
lasr_vision_msgs/BodyPixMask[] masks

# Pose information
lasr_vision_msgs/BodyPixPose[] poses


================================================================================
MSG: lasr_vision_msgs/BodyPixMask
# 1D array of mask
bool[] mask

# Shape
#
# Use in mask.reshape(...shape) to get back 2D array of mask
uint32[] shape

================================================================================
MSG: lasr_vision_msgs/BodyPixPose
# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/types.py
")



(provide :lasr_vision_msgs/BodyPixDetection "1aab0085097b15bd22e0c25c6a47130a")


