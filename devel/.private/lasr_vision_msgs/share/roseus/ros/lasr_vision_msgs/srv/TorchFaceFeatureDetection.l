;; Auto-generated. Do not edit!


(when (boundp 'lasr_vision_msgs::TorchFaceFeatureDetection)
  (if (not (find-package "LASR_VISION_MSGS"))
    (make-package "LASR_VISION_MSGS"))
  (shadow 'TorchFaceFeatureDetection (find-package "LASR_VISION_MSGS")))
(unless (find-package "LASR_VISION_MSGS::TORCHFACEFEATUREDETECTION")
  (make-package "LASR_VISION_MSGS::TORCHFACEFEATUREDETECTION"))
(unless (find-package "LASR_VISION_MSGS::TORCHFACEFEATUREDETECTIONREQUEST")
  (make-package "LASR_VISION_MSGS::TORCHFACEFEATUREDETECTIONREQUEST"))
(unless (find-package "LASR_VISION_MSGS::TORCHFACEFEATUREDETECTIONRESPONSE")
  (make-package "LASR_VISION_MSGS::TORCHFACEFEATUREDETECTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass lasr_vision_msgs::TorchFaceFeatureDetectionRequest
  :super ros::object
  :slots (_image_raw ))

(defmethod lasr_vision_msgs::TorchFaceFeatureDetectionRequest
  (:init
   (&key
    ((:image_raw __image_raw) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image_raw __image_raw)
   self)
  (:image_raw
   (&rest __image_raw)
   (if (keywordp (car __image_raw))
       (send* _image_raw __image_raw)
     (progn
       (if __image_raw (setq _image_raw (car __image_raw)))
       _image_raw)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image_raw
    (send _image_raw :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image_raw
       (send _image_raw :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image_raw
     (send _image_raw :deserialize buf ptr-) (incf ptr- (send _image_raw :serialization-length))
   ;;
   self)
  )

(defclass lasr_vision_msgs::TorchFaceFeatureDetectionResponse
  :super ros::object
  :slots (_detected_features ))

(defmethod lasr_vision_msgs::TorchFaceFeatureDetectionResponse
  (:init
   (&key
    ((:detected_features __detected_features) ())
    )
   (send-super :init)
   (setq _detected_features __detected_features)
   self)
  (:detected_features
   (&rest __detected_features)
   (if (keywordp (car __detected_features))
       (send* _detected_features __detected_features)
     (progn
       (if __detected_features (setq _detected_features (car __detected_features)))
       _detected_features)))
  (:serialization-length
   ()
   (+
    ;; lasr_vision_msgs/FeatureWithColour[] _detected_features
    (apply #'+ (send-all _detected_features :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lasr_vision_msgs/FeatureWithColour[] _detected_features
     (write-long (length _detected_features) s)
     (dolist (elem _detected_features)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lasr_vision_msgs/FeatureWithColour[] _detected_features
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected_features (let (r) (dotimes (i n) (push (instance lasr_vision_msgs::FeatureWithColour :init) r)) r))
     (dolist (elem- _detected_features)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lasr_vision_msgs::TorchFaceFeatureDetection
  :super ros::object
  :slots ())

(setf (get lasr_vision_msgs::TorchFaceFeatureDetection :md5sum-) "71d0419cc4eccd880efd242219ef83a4")
(setf (get lasr_vision_msgs::TorchFaceFeatureDetection :datatype-) "lasr_vision_msgs/TorchFaceFeatureDetection")
(setf (get lasr_vision_msgs::TorchFaceFeatureDetection :request) lasr_vision_msgs::TorchFaceFeatureDetectionRequest)
(setf (get lasr_vision_msgs::TorchFaceFeatureDetection :response) lasr_vision_msgs::TorchFaceFeatureDetectionResponse)

(defmethod lasr_vision_msgs::TorchFaceFeatureDetectionRequest
  (:response () (instance lasr_vision_msgs::TorchFaceFeatureDetectionResponse :init)))

(setf (get lasr_vision_msgs::TorchFaceFeatureDetectionRequest :md5sum-) "71d0419cc4eccd880efd242219ef83a4")
(setf (get lasr_vision_msgs::TorchFaceFeatureDetectionRequest :datatype-) "lasr_vision_msgs/TorchFaceFeatureDetectionRequest")
(setf (get lasr_vision_msgs::TorchFaceFeatureDetectionRequest :definition-)
      "# Image to run inference on
sensor_msgs/Image image_raw

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
---
# Detection result
lasr_vision_msgs/FeatureWithColour[] detected_features

================================================================================
MSG: lasr_vision_msgs/FeatureWithColour
# Feature name
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

(setf (get lasr_vision_msgs::TorchFaceFeatureDetectionResponse :md5sum-) "71d0419cc4eccd880efd242219ef83a4")
(setf (get lasr_vision_msgs::TorchFaceFeatureDetectionResponse :datatype-) "lasr_vision_msgs/TorchFaceFeatureDetectionResponse")
(setf (get lasr_vision_msgs::TorchFaceFeatureDetectionResponse :definition-)
      "# Image to run inference on
sensor_msgs/Image image_raw

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
---
# Detection result
lasr_vision_msgs/FeatureWithColour[] detected_features

================================================================================
MSG: lasr_vision_msgs/FeatureWithColour
# Feature name
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



(provide :lasr_vision_msgs/TorchFaceFeatureDetection "71d0419cc4eccd880efd242219ef83a4")


