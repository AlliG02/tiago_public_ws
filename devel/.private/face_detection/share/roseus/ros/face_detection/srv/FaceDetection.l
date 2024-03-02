;; Auto-generated. Do not edit!


(when (boundp 'face_detection::FaceDetection)
  (if (not (find-package "FACE_DETECTION"))
    (make-package "FACE_DETECTION"))
  (shadow 'FaceDetection (find-package "FACE_DETECTION")))
(unless (find-package "FACE_DETECTION::FACEDETECTION")
  (make-package "FACE_DETECTION::FACEDETECTION"))
(unless (find-package "FACE_DETECTION::FACEDETECTIONREQUEST")
  (make-package "FACE_DETECTION::FACEDETECTIONREQUEST"))
(unless (find-package "FACE_DETECTION::FACEDETECTIONRESPONSE")
  (make-package "FACE_DETECTION::FACEDETECTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "LASR_VISION_MSGS"))
  (ros::roseus-add-msgs "lasr_vision_msgs"))


(defclass face_detection::FaceDetectionRequest
  :super ros::object
  :slots (_image_raw ))

(defmethod face_detection::FaceDetectionRequest
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

(defclass face_detection::FaceDetectionResponse
  :super ros::object
  :slots (_detected_objects ))

(defmethod face_detection::FaceDetectionResponse
  (:init
   (&key
    ((:detected_objects __detected_objects) ())
    )
   (send-super :init)
   (setq _detected_objects __detected_objects)
   self)
  (:detected_objects
   (&rest __detected_objects)
   (if (keywordp (car __detected_objects))
       (send* _detected_objects __detected_objects)
     (progn
       (if __detected_objects (setq _detected_objects (car __detected_objects)))
       _detected_objects)))
  (:serialization-length
   ()
   (+
    ;; lasr_vision_msgs/Detection[] _detected_objects
    (apply #'+ (send-all _detected_objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lasr_vision_msgs/Detection[] _detected_objects
     (write-long (length _detected_objects) s)
     (dolist (elem _detected_objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lasr_vision_msgs/Detection[] _detected_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected_objects (let (r) (dotimes (i n) (push (instance lasr_vision_msgs::Detection :init) r)) r))
     (dolist (elem- _detected_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass face_detection::FaceDetection
  :super ros::object
  :slots ())

(setf (get face_detection::FaceDetection :md5sum-) "cff50308fa296d2f2d882d9176d414f7")
(setf (get face_detection::FaceDetection :datatype-) "face_detection/FaceDetection")
(setf (get face_detection::FaceDetection :request) face_detection::FaceDetectionRequest)
(setf (get face_detection::FaceDetection :response) face_detection::FaceDetectionResponse)

(defmethod face_detection::FaceDetectionRequest
  (:response () (instance face_detection::FaceDetectionResponse :init)))

(setf (get face_detection::FaceDetectionRequest :md5sum-) "cff50308fa296d2f2d882d9176d414f7")
(setf (get face_detection::FaceDetectionRequest :datatype-) "face_detection/FaceDetectionRequest")
(setf (get face_detection::FaceDetectionRequest :definition-)
      "sensor_msgs/Image image_raw

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
lasr_vision_msgs/Detection[] detected_objects


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

(setf (get face_detection::FaceDetectionResponse :md5sum-) "cff50308fa296d2f2d882d9176d414f7")
(setf (get face_detection::FaceDetectionResponse :datatype-) "face_detection/FaceDetectionResponse")
(setf (get face_detection::FaceDetectionResponse :definition-)
      "sensor_msgs/Image image_raw

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
lasr_vision_msgs/Detection[] detected_objects


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



(provide :face_detection/FaceDetection "cff50308fa296d2f2d882d9176d414f7")


