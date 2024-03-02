; Auto-generated. Do not edit!


(cl:in-package recognise_people-srv)


;//! \htmlinclude RecognisePeople-request.msg.html

(cl:defclass <RecognisePeople-request> (roslisp-msg-protocol:ros-message)
  ((detected_objects_yolo
    :reader detected_objects_yolo
    :initarg :detected_objects_yolo
    :type (cl:vector lasr_vision_msgs-msg:Detection)
   :initform (cl:make-array 0 :element-type 'lasr_vision_msgs-msg:Detection :initial-element (cl:make-instance 'lasr_vision_msgs-msg:Detection)))
   (detected_objects_opencv
    :reader detected_objects_opencv
    :initarg :detected_objects_opencv
    :type (cl:vector lasr_vision_msgs-msg:Detection)
   :initform (cl:make-array 0 :element-type 'lasr_vision_msgs-msg:Detection :initial-element (cl:make-instance 'lasr_vision_msgs-msg:Detection))))
)

(cl:defclass RecognisePeople-request (<RecognisePeople-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognisePeople-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognisePeople-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recognise_people-srv:<RecognisePeople-request> is deprecated: use recognise_people-srv:RecognisePeople-request instead.")))

(cl:ensure-generic-function 'detected_objects_yolo-val :lambda-list '(m))
(cl:defmethod detected_objects_yolo-val ((m <RecognisePeople-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recognise_people-srv:detected_objects_yolo-val is deprecated.  Use recognise_people-srv:detected_objects_yolo instead.")
  (detected_objects_yolo m))

(cl:ensure-generic-function 'detected_objects_opencv-val :lambda-list '(m))
(cl:defmethod detected_objects_opencv-val ((m <RecognisePeople-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recognise_people-srv:detected_objects_opencv-val is deprecated.  Use recognise_people-srv:detected_objects_opencv instead.")
  (detected_objects_opencv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognisePeople-request>) ostream)
  "Serializes a message object of type '<RecognisePeople-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detected_objects_yolo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detected_objects_yolo))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detected_objects_opencv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detected_objects_opencv))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognisePeople-request>) istream)
  "Deserializes a message object of type '<RecognisePeople-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detected_objects_yolo) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detected_objects_yolo)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lasr_vision_msgs-msg:Detection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detected_objects_opencv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detected_objects_opencv)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lasr_vision_msgs-msg:Detection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognisePeople-request>)))
  "Returns string type for a service object of type '<RecognisePeople-request>"
  "recognise_people/RecognisePeopleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognisePeople-request)))
  "Returns string type for a service object of type 'RecognisePeople-request"
  "recognise_people/RecognisePeopleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognisePeople-request>)))
  "Returns md5sum for a message object of type '<RecognisePeople-request>"
  "40b5b9f7809abcf08ebde54fe0c7412f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognisePeople-request)))
  "Returns md5sum for a message object of type 'RecognisePeople-request"
  "40b5b9f7809abcf08ebde54fe0c7412f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognisePeople-request>)))
  "Returns full string definition for message of type '<RecognisePeople-request>"
  (cl:format cl:nil "lasr_vision_msgs/Detection[] detected_objects_yolo~%lasr_vision_msgs/Detection[] detected_objects_opencv~%~%================================================================================~%MSG: lasr_vision_msgs/Detection~%# Detected Object Class~%string name~%~%# How certain we are this is what we think it is~%float32 confidence~%~%# Bounding box mask defined in pixel-space~%int32[] xywh~%~%# Segmentation mask defined in pixel-space~%#~%# This will be empty if a segmentation model was not used~%int32[] xyseg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognisePeople-request)))
  "Returns full string definition for message of type 'RecognisePeople-request"
  (cl:format cl:nil "lasr_vision_msgs/Detection[] detected_objects_yolo~%lasr_vision_msgs/Detection[] detected_objects_opencv~%~%================================================================================~%MSG: lasr_vision_msgs/Detection~%# Detected Object Class~%string name~%~%# How certain we are this is what we think it is~%float32 confidence~%~%# Bounding box mask defined in pixel-space~%int32[] xywh~%~%# Segmentation mask defined in pixel-space~%#~%# This will be empty if a segmentation model was not used~%int32[] xyseg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognisePeople-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detected_objects_yolo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detected_objects_opencv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognisePeople-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognisePeople-request
    (cl:cons ':detected_objects_yolo (detected_objects_yolo msg))
    (cl:cons ':detected_objects_opencv (detected_objects_opencv msg))
))
;//! \htmlinclude RecognisePeople-response.msg.html

(cl:defclass <RecognisePeople-response> (roslisp-msg-protocol:ros-message)
  ((detected_objects
    :reader detected_objects
    :initarg :detected_objects
    :type (cl:vector lasr_vision_msgs-msg:Detection)
   :initform (cl:make-array 0 :element-type 'lasr_vision_msgs-msg:Detection :initial-element (cl:make-instance 'lasr_vision_msgs-msg:Detection))))
)

(cl:defclass RecognisePeople-response (<RecognisePeople-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognisePeople-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognisePeople-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recognise_people-srv:<RecognisePeople-response> is deprecated: use recognise_people-srv:RecognisePeople-response instead.")))

(cl:ensure-generic-function 'detected_objects-val :lambda-list '(m))
(cl:defmethod detected_objects-val ((m <RecognisePeople-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recognise_people-srv:detected_objects-val is deprecated.  Use recognise_people-srv:detected_objects instead.")
  (detected_objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognisePeople-response>) ostream)
  "Serializes a message object of type '<RecognisePeople-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detected_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detected_objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognisePeople-response>) istream)
  "Deserializes a message object of type '<RecognisePeople-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detected_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detected_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lasr_vision_msgs-msg:Detection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognisePeople-response>)))
  "Returns string type for a service object of type '<RecognisePeople-response>"
  "recognise_people/RecognisePeopleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognisePeople-response)))
  "Returns string type for a service object of type 'RecognisePeople-response"
  "recognise_people/RecognisePeopleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognisePeople-response>)))
  "Returns md5sum for a message object of type '<RecognisePeople-response>"
  "40b5b9f7809abcf08ebde54fe0c7412f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognisePeople-response)))
  "Returns md5sum for a message object of type 'RecognisePeople-response"
  "40b5b9f7809abcf08ebde54fe0c7412f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognisePeople-response>)))
  "Returns full string definition for message of type '<RecognisePeople-response>"
  (cl:format cl:nil "lasr_vision_msgs/Detection[] detected_objects~%~%~%================================================================================~%MSG: lasr_vision_msgs/Detection~%# Detected Object Class~%string name~%~%# How certain we are this is what we think it is~%float32 confidence~%~%# Bounding box mask defined in pixel-space~%int32[] xywh~%~%# Segmentation mask defined in pixel-space~%#~%# This will be empty if a segmentation model was not used~%int32[] xyseg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognisePeople-response)))
  "Returns full string definition for message of type 'RecognisePeople-response"
  (cl:format cl:nil "lasr_vision_msgs/Detection[] detected_objects~%~%~%================================================================================~%MSG: lasr_vision_msgs/Detection~%# Detected Object Class~%string name~%~%# How certain we are this is what we think it is~%float32 confidence~%~%# Bounding box mask defined in pixel-space~%int32[] xywh~%~%# Segmentation mask defined in pixel-space~%#~%# This will be empty if a segmentation model was not used~%int32[] xyseg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognisePeople-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detected_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognisePeople-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognisePeople-response
    (cl:cons ':detected_objects (detected_objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecognisePeople)))
  'RecognisePeople-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecognisePeople)))
  'RecognisePeople-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognisePeople)))
  "Returns string type for a service object of type '<RecognisePeople>"
  "recognise_people/RecognisePeople")