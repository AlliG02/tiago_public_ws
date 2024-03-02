; Auto-generated. Do not edit!


(cl:in-package lasr_dialogflow-srv)


;//! \htmlinclude DialogflowAudio-request.msg.html

(cl:defclass <DialogflowAudio-request> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (action
    :reader action
    :initarg :action
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass DialogflowAudio-request (<DialogflowAudio-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DialogflowAudio-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DialogflowAudio-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_dialogflow-srv:<DialogflowAudio-request> is deprecated: use lasr_dialogflow-srv:DialogflowAudio-request instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <DialogflowAudio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_dialogflow-srv:task-val is deprecated.  Use lasr_dialogflow-srv:task instead.")
  (task m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <DialogflowAudio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_dialogflow-srv:action-val is deprecated.  Use lasr_dialogflow-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DialogflowAudio-request>) ostream)
  "Serializes a message object of type '<DialogflowAudio-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DialogflowAudio-request>) istream)
  "Deserializes a message object of type '<DialogflowAudio-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DialogflowAudio-request>)))
  "Returns string type for a service object of type '<DialogflowAudio-request>"
  "lasr_dialogflow/DialogflowAudioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DialogflowAudio-request)))
  "Returns string type for a service object of type 'DialogflowAudio-request"
  "lasr_dialogflow/DialogflowAudioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DialogflowAudio-request>)))
  "Returns md5sum for a message object of type '<DialogflowAudio-request>"
  "c6778e75ee863a7048845ef167f478f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DialogflowAudio-request)))
  "Returns md5sum for a message object of type 'DialogflowAudio-request"
  "c6778e75ee863a7048845ef167f478f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DialogflowAudio-request>)))
  "Returns full string definition for message of type '<DialogflowAudio-request>"
  (cl:format cl:nil "std_msgs/String task~%std_msgs/String action~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DialogflowAudio-request)))
  "Returns full string definition for message of type 'DialogflowAudio-request"
  (cl:format cl:nil "std_msgs/String task~%std_msgs/String action~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DialogflowAudio-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DialogflowAudio-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DialogflowAudio-request
    (cl:cons ':task (task msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude DialogflowAudio-response.msg.html

(cl:defclass <DialogflowAudio-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (success
    :reader success
    :initarg :success
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass DialogflowAudio-response (<DialogflowAudio-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DialogflowAudio-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DialogflowAudio-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_dialogflow-srv:<DialogflowAudio-response> is deprecated: use lasr_dialogflow-srv:DialogflowAudio-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DialogflowAudio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_dialogflow-srv:result-val is deprecated.  Use lasr_dialogflow-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DialogflowAudio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_dialogflow-srv:success-val is deprecated.  Use lasr_dialogflow-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DialogflowAudio-response>) ostream)
  "Serializes a message object of type '<DialogflowAudio-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DialogflowAudio-response>) istream)
  "Deserializes a message object of type '<DialogflowAudio-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DialogflowAudio-response>)))
  "Returns string type for a service object of type '<DialogflowAudio-response>"
  "lasr_dialogflow/DialogflowAudioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DialogflowAudio-response)))
  "Returns string type for a service object of type 'DialogflowAudio-response"
  "lasr_dialogflow/DialogflowAudioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DialogflowAudio-response>)))
  "Returns md5sum for a message object of type '<DialogflowAudio-response>"
  "c6778e75ee863a7048845ef167f478f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DialogflowAudio-response)))
  "Returns md5sum for a message object of type 'DialogflowAudio-response"
  "c6778e75ee863a7048845ef167f478f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DialogflowAudio-response>)))
  "Returns full string definition for message of type '<DialogflowAudio-response>"
  (cl:format cl:nil "std_msgs/String result~%std_msgs/Bool success~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DialogflowAudio-response)))
  "Returns full string definition for message of type 'DialogflowAudio-response"
  (cl:format cl:nil "std_msgs/String result~%std_msgs/Bool success~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DialogflowAudio-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DialogflowAudio-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DialogflowAudio-response
    (cl:cons ':result (result msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DialogflowAudio)))
  'DialogflowAudio-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DialogflowAudio)))
  'DialogflowAudio-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DialogflowAudio)))
  "Returns string type for a service object of type '<DialogflowAudio>"
  "lasr_dialogflow/DialogflowAudio")