;; Auto-generated. Do not edit!


(when (boundp 'lasr_vision_msgs::Recognise)
  (if (not (find-package "LASR_VISION_MSGS"))
    (make-package "LASR_VISION_MSGS"))
  (shadow 'Recognise (find-package "LASR_VISION_MSGS")))
(unless (find-package "LASR_VISION_MSGS::RECOGNISE")
  (make-package "LASR_VISION_MSGS::RECOGNISE"))
(unless (find-package "LASR_VISION_MSGS::RECOGNISEREQUEST")
  (make-package "LASR_VISION_MSGS::RECOGNISEREQUEST"))
(unless (find-package "LASR_VISION_MSGS::RECOGNISERESPONSE")
  (make-package "LASR_VISION_MSGS::RECOGNISERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass lasr_vision_msgs::RecogniseRequest
  :super ros::object
  :slots (_image_raw _dataset _confidence ))

(defmethod lasr_vision_msgs::RecogniseRequest
  (:init
   (&key
    ((:image_raw __image_raw) (instance sensor_msgs::Image :init))
    ((:dataset __dataset) "")
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _image_raw __image_raw)
   (setq _dataset (string __dataset))
   (setq _confidence (float __confidence))
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
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image_raw
    (send _image_raw :serialization-length)
    ;; string _dataset
    4 (length _dataset)
    ;; float32 _confidence
    4
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
   ;;
   self)
  )

(defclass lasr_vision_msgs::RecogniseResponse
  :super ros::object
  :slots (_detections ))

(defmethod lasr_vision_msgs::RecogniseResponse
  (:init
   (&key
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _detections __detections)
   self)
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; lasr_vision_msgs/Detection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lasr_vision_msgs/Detection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lasr_vision_msgs/Detection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance lasr_vision_msgs::Detection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lasr_vision_msgs::Recognise
  :super ros::object
  :slots ())

(setf (get lasr_vision_msgs::Recognise :md5sum-) "374bce9e43746740c5d20f82f7eecce8")
(setf (get lasr_vision_msgs::Recognise :datatype-) "lasr_vision_msgs/Recognise")
(setf (get lasr_vision_msgs::Recognise :request) lasr_vision_msgs::RecogniseRequest)
(setf (get lasr_vision_msgs::Recognise :response) lasr_vision_msgs::RecogniseResponse)

(defmethod lasr_vision_msgs::RecogniseRequest
  (:response () (instance lasr_vision_msgs::RecogniseResponse :init)))

(setf (get lasr_vision_msgs::RecogniseRequest :md5sum-) "374bce9e43746740c5d20f82f7eecce8")
(setf (get lasr_vision_msgs::RecogniseRequest :datatype-) "lasr_vision_msgs/RecogniseRequest")
(setf (get lasr_vision_msgs::RecogniseRequest :definition-)
      "# Image to run inference on
sensor_msgs/Image image_raw

# Dataset to use
string dataset

# Confidence threshold for filtering detections
float32 confidence


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

# Detections
lasr_vision_msgs/Detection[] detections


================================================================================
MSG: lasr_vision_msgs/Detection
# Detected Object Class
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

(setf (get lasr_vision_msgs::RecogniseResponse :md5sum-) "374bce9e43746740c5d20f82f7eecce8")
(setf (get lasr_vision_msgs::RecogniseResponse :datatype-) "lasr_vision_msgs/RecogniseResponse")
(setf (get lasr_vision_msgs::RecogniseResponse :definition-)
      "# Image to run inference on
sensor_msgs/Image image_raw

# Dataset to use
string dataset

# Confidence threshold for filtering detections
float32 confidence


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

# Detections
lasr_vision_msgs/Detection[] detections


================================================================================
MSG: lasr_vision_msgs/Detection
# Detected Object Class
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



(provide :lasr_vision_msgs/Recognise "374bce9e43746740c5d20f82f7eecce8")


