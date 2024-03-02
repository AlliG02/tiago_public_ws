; Auto-generated. Do not edit!


(cl:in-package lasr_dialogflow-srv)


;//! \htmlinclude DialogflowText-request.msg.html

(cl:defclass <DialogflowText-request> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (action
    :reader action
    :initarg :action
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (query_text
    :reader query_text
    :initarg :query_text
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass DialogflowText-request (<DialogflowText-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DialogflowText-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DialogflowText-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_dialogflow-srv:<DialogflowText-request> is deprecated: use lasr_dialogflow-srv:DialogflowText-request instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <DialogflowText-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_dialogflow-srv:task-val is deprecated.  Use lasr_dialogflow-srv:task instead.")
  (task m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <DialogflowText-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_dialogflow-srv:action-val is deprecated.  Use lasr_dialogflow-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'query_text-val :lambda-list '(m))
(cl:defmethod query_text-val ((m <DialogflowText-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_dialogflow-srv:query_text-val is deprecated.  Use lasr_dialogflow-srv:query_text instead.")
  (query_text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DialogflowText-request>) ostream)
  "Serializes a message object of type '<DialogflowText-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'query_text) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DialogflowText-request>) istream)
  "Deserializes a message object of type '<DialogflowText-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'query_text) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DialogflowText-request>)))
  "Returns string type for a service object of type '<DialogflowText-request>"
  "lasr_dialogflow/DialogflowTextRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DialogflowText-request)))
  "Returns string type for a service object of type 'DialogflowText-request"
  "lasr_dialogflow/DialogflowTextRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DialogflowText-request>)))
  "Returns md5sum for a message object of type '<DialogflowText-request>"
  "b626d0b32e2760daee50a75d7d83566b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DialogflowText-request)))
  "Returns md5sum for a message object of type 'DialogflowText-request"
  "b626d0b32e2760daee50a75d7d83566b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DialogflowText-request>)))
  "Returns full string definition for message of type '<DialogflowText-request>"
  (cl:format cl:nil "std_msgs/String task~%std_msgs/String action~%std_msgs/String query_text~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DialogflowText-request)))
  "Returns full string definition for message of type 'DialogflowText-request"
  (cl:format cl:nil "std_msgs/String task~%std_msgs/String action~%std_msgs/String query_text~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DialogflowText-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'query_text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DialogflowText-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DialogflowText-request
    (cl:cons ':task (task msg))
    (cl:cons ':action (action msg))
    (cl:cons ':query_text (query_text msg))
))
;//! \htmlinclude DialogflowText-response.msg.html

(cl:defclass <DialogflowText-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DialogflowText-response (<DialogflowText-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DialogflowText-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DialogflowText-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_dialogflow-srv:<DialogflowText-response> is deprecated: use lasr_dialogflow-srv:DialogflowText-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DialogflowText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_dialogflow-srv:result-val is deprecated.  Use lasr_dialogflow-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DialogflowText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_dialogflow-srv:success-val is deprecated.  Use lasr_dialogflow-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DialogflowText-response>) ostream)
  "Serializes a message object of type '<DialogflowText-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DialogflowText-response>) istream)
  "Deserializes a message object of type '<DialogflowText-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DialogflowText-response>)))
  "Returns string type for a service object of type '<DialogflowText-response>"
  "lasr_dialogflow/DialogflowTextResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DialogflowText-response)))
  "Returns string type for a service object of type 'DialogflowText-response"
  "lasr_dialogflow/DialogflowTextResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DialogflowText-response>)))
  "Returns md5sum for a message object of type '<DialogflowText-response>"
  "b626d0b32e2760daee50a75d7d83566b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DialogflowText-response)))
  "Returns md5sum for a message object of type 'DialogflowText-response"
  "b626d0b32e2760daee50a75d7d83566b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DialogflowText-response>)))
  "Returns full string definition for message of type '<DialogflowText-response>"
  (cl:format cl:nil "std_msgs/String result~%std_msgs/Bool success~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DialogflowText-response)))
  "Returns full string definition for message of type 'DialogflowText-response"
  (cl:format cl:nil "std_msgs/String result~%std_msgs/Bool success~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DialogflowText-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DialogflowText-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DialogflowText-response
    (cl:cons ':result (result msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DialogflowText)))
  'DialogflowText-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DialogflowText)))
  'DialogflowText-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DialogflowText)))
  "Returns string type for a service object of type '<DialogflowText>"
  "lasr_dialogflow/DialogflowText")