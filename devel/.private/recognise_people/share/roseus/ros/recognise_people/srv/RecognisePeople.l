;; Auto-generated. Do not edit!


(when (boundp 'recognise_people::RecognisePeople)
  (if (not (find-package "RECOGNISE_PEOPLE"))
    (make-package "RECOGNISE_PEOPLE"))
  (shadow 'RecognisePeople (find-package "RECOGNISE_PEOPLE")))
(unless (find-package "RECOGNISE_PEOPLE::RECOGNISEPEOPLE")
  (make-package "RECOGNISE_PEOPLE::RECOGNISEPEOPLE"))
(unless (find-package "RECOGNISE_PEOPLE::RECOGNISEPEOPLEREQUEST")
  (make-package "RECOGNISE_PEOPLE::RECOGNISEPEOPLEREQUEST"))
(unless (find-package "RECOGNISE_PEOPLE::RECOGNISEPEOPLERESPONSE")
  (make-package "RECOGNISE_PEOPLE::RECOGNISEPEOPLERESPONSE"))

(in-package "ROS")

(if (not (find-package "LASR_VISION_MSGS"))
  (ros::roseus-add-msgs "lasr_vision_msgs"))


(if (not (find-package "LASR_VISION_MSGS"))
  (ros::roseus-add-msgs "lasr_vision_msgs"))


(defclass recognise_people::RecognisePeopleRequest
  :super ros::object
  :slots (_detected_objects_yolo _detected_objects_opencv ))

(defmethod recognise_people::RecognisePeopleRequest
  (:init
   (&key
    ((:detected_objects_yolo __detected_objects_yolo) ())
    ((:detected_objects_opencv __detected_objects_opencv) ())
    )
   (send-super :init)
   (setq _detected_objects_yolo __detected_objects_yolo)
   (setq _detected_objects_opencv __detected_objects_opencv)
   self)
  (:detected_objects_yolo
   (&rest __detected_objects_yolo)
   (if (keywordp (car __detected_objects_yolo))
       (send* _detected_objects_yolo __detected_objects_yolo)
     (progn
       (if __detected_objects_yolo (setq _detected_objects_yolo (car __detected_objects_yolo)))
       _detected_objects_yolo)))
  (:detected_objects_opencv
   (&rest __detected_objects_opencv)
   (if (keywordp (car __detected_objects_opencv))
       (send* _detected_objects_opencv __detected_objects_opencv)
     (progn
       (if __detected_objects_opencv (setq _detected_objects_opencv (car __detected_objects_opencv)))
       _detected_objects_opencv)))
  (:serialization-length
   ()
   (+
    ;; lasr_vision_msgs/Detection[] _detected_objects_yolo
    (apply #'+ (send-all _detected_objects_yolo :serialization-length)) 4
    ;; lasr_vision_msgs/Detection[] _detected_objects_opencv
    (apply #'+ (send-all _detected_objects_opencv :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lasr_vision_msgs/Detection[] _detected_objects_yolo
     (write-long (length _detected_objects_yolo) s)
     (dolist (elem _detected_objects_yolo)
       (send elem :serialize s)
       )
     ;; lasr_vision_msgs/Detection[] _detected_objects_opencv
     (write-long (length _detected_objects_opencv) s)
     (dolist (elem _detected_objects_opencv)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lasr_vision_msgs/Detection[] _detected_objects_yolo
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected_objects_yolo (let (r) (dotimes (i n) (push (instance lasr_vision_msgs::Detection :init) r)) r))
     (dolist (elem- _detected_objects_yolo)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lasr_vision_msgs/Detection[] _detected_objects_opencv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected_objects_opencv (let (r) (dotimes (i n) (push (instance lasr_vision_msgs::Detection :init) r)) r))
     (dolist (elem- _detected_objects_opencv)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass recognise_people::RecognisePeopleResponse
  :super ros::object
  :slots (_detected_objects ))

(defmethod recognise_people::RecognisePeopleResponse
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

(defclass recognise_people::RecognisePeople
  :super ros::object
  :slots ())

(setf (get recognise_people::RecognisePeople :md5sum-) "40b5b9f7809abcf08ebde54fe0c7412f")
(setf (get recognise_people::RecognisePeople :datatype-) "recognise_people/RecognisePeople")
(setf (get recognise_people::RecognisePeople :request) recognise_people::RecognisePeopleRequest)
(setf (get recognise_people::RecognisePeople :response) recognise_people::RecognisePeopleResponse)

(defmethod recognise_people::RecognisePeopleRequest
  (:response () (instance recognise_people::RecognisePeopleResponse :init)))

(setf (get recognise_people::RecognisePeopleRequest :md5sum-) "40b5b9f7809abcf08ebde54fe0c7412f")
(setf (get recognise_people::RecognisePeopleRequest :datatype-) "recognise_people/RecognisePeopleRequest")
(setf (get recognise_people::RecognisePeopleRequest :definition-)
      "lasr_vision_msgs/Detection[] detected_objects_yolo
lasr_vision_msgs/Detection[] detected_objects_opencv

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

(setf (get recognise_people::RecognisePeopleResponse :md5sum-) "40b5b9f7809abcf08ebde54fe0c7412f")
(setf (get recognise_people::RecognisePeopleResponse :datatype-) "recognise_people/RecognisePeopleResponse")
(setf (get recognise_people::RecognisePeopleResponse :definition-)
      "lasr_vision_msgs/Detection[] detected_objects_yolo
lasr_vision_msgs/Detection[] detected_objects_opencv

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



(provide :recognise_people/RecognisePeople "40b5b9f7809abcf08ebde54fe0c7412f")


