; Auto-generated. Do not edit!


(cl:in-package lasr_interaction_server-srv)


;//! \htmlinclude SpeechInteraction-request.msg.html

(cl:defclass <SpeechInteraction-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SpeechInteraction-request (<SpeechInteraction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechInteraction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechInteraction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_interaction_server-srv:<SpeechInteraction-request> is deprecated: use lasr_interaction_server-srv:SpeechInteraction-request instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <SpeechInteraction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_interaction_server-srv:task-val is deprecated.  Use lasr_interaction_server-srv:task instead.")
  (task m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <SpeechInteraction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_interaction_server-srv:action-val is deprecated.  Use lasr_interaction_server-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechInteraction-request>) ostream)
  "Serializes a message object of type '<SpeechInteraction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechInteraction-request>) istream)
  "Deserializes a message object of type '<SpeechInteraction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechInteraction-request>)))
  "Returns string type for a service object of type '<SpeechInteraction-request>"
  "lasr_interaction_server/SpeechInteractionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechInteraction-request)))
  "Returns string type for a service object of type 'SpeechInteraction-request"
  "lasr_interaction_server/SpeechInteractionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechInteraction-request>)))
  "Returns md5sum for a message object of type '<SpeechInteraction-request>"
  "c6778e75ee863a7048845ef167f478f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechInteraction-request)))
  "Returns md5sum for a message object of type 'SpeechInteraction-request"
  "c6778e75ee863a7048845ef167f478f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechInteraction-request>)))
  "Returns full string definition for message of type '<SpeechInteraction-request>"
  (cl:format cl:nil "std_msgs/String task~%std_msgs/String action~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechInteraction-request)))
  "Returns full string definition for message of type 'SpeechInteraction-request"
  (cl:format cl:nil "std_msgs/String task~%std_msgs/String action~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechInteraction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechInteraction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechInteraction-request
    (cl:cons ':task (task msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude SpeechInteraction-response.msg.html

(cl:defclass <SpeechInteraction-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SpeechInteraction-response (<SpeechInteraction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechInteraction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechInteraction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_interaction_server-srv:<SpeechInteraction-response> is deprecated: use lasr_interaction_server-srv:SpeechInteraction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SpeechInteraction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_interaction_server-srv:result-val is deprecated.  Use lasr_interaction_server-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SpeechInteraction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_interaction_server-srv:success-val is deprecated.  Use lasr_interaction_server-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechInteraction-response>) ostream)
  "Serializes a message object of type '<SpeechInteraction-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechInteraction-response>) istream)
  "Deserializes a message object of type '<SpeechInteraction-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechInteraction-response>)))
  "Returns string type for a service object of type '<SpeechInteraction-response>"
  "lasr_interaction_server/SpeechInteractionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechInteraction-response)))
  "Returns string type for a service object of type 'SpeechInteraction-response"
  "lasr_interaction_server/SpeechInteractionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechInteraction-response>)))
  "Returns md5sum for a message object of type '<SpeechInteraction-response>"
  "c6778e75ee863a7048845ef167f478f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechInteraction-response)))
  "Returns md5sum for a message object of type 'SpeechInteraction-response"
  "c6778e75ee863a7048845ef167f478f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechInteraction-response>)))
  "Returns full string definition for message of type '<SpeechInteraction-response>"
  (cl:format cl:nil "std_msgs/String result~%std_msgs/Bool success~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechInteraction-response)))
  "Returns full string definition for message of type 'SpeechInteraction-response"
  (cl:format cl:nil "std_msgs/String result~%std_msgs/Bool success~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechInteraction-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechInteraction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechInteraction-response
    (cl:cons ':result (result msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpeechInteraction)))
  'SpeechInteraction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpeechInteraction)))
  'SpeechInteraction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechInteraction)))
  "Returns string type for a service object of type '<SpeechInteraction>"
  "lasr_interaction_server/SpeechInteraction")