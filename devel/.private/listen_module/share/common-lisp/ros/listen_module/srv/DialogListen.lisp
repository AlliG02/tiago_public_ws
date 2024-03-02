; Auto-generated. Do not edit!


(cl:in-package listen_module-srv)


;//! \htmlinclude DialogListen-request.msg.html

(cl:defclass <DialogListen-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (subaction
    :reader subaction
    :initarg :subaction
    :type cl:string
    :initform "")
   (query_text
    :reader query_text
    :initarg :query_text
    :type cl:string
    :initform ""))
)

(cl:defclass DialogListen-request (<DialogListen-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DialogListen-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DialogListen-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name listen_module-srv:<DialogListen-request> is deprecated: use listen_module-srv:DialogListen-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <DialogListen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader listen_module-srv:action-val is deprecated.  Use listen_module-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'subaction-val :lambda-list '(m))
(cl:defmethod subaction-val ((m <DialogListen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader listen_module-srv:subaction-val is deprecated.  Use listen_module-srv:subaction instead.")
  (subaction m))

(cl:ensure-generic-function 'query_text-val :lambda-list '(m))
(cl:defmethod query_text-val ((m <DialogListen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader listen_module-srv:query_text-val is deprecated.  Use listen_module-srv:query_text instead.")
  (query_text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DialogListen-request>) ostream)
  "Serializes a message object of type '<DialogListen-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subaction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subaction))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query_text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DialogListen-request>) istream)
  "Deserializes a message object of type '<DialogListen-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subaction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subaction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'query_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DialogListen-request>)))
  "Returns string type for a service object of type '<DialogListen-request>"
  "listen_module/DialogListenRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DialogListen-request)))
  "Returns string type for a service object of type 'DialogListen-request"
  "listen_module/DialogListenRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DialogListen-request>)))
  "Returns md5sum for a message object of type '<DialogListen-request>"
  "56cb91b1044347ee934e8b6c5a253efa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DialogListen-request)))
  "Returns md5sum for a message object of type 'DialogListen-request"
  "56cb91b1044347ee934e8b6c5a253efa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DialogListen-request>)))
  "Returns full string definition for message of type '<DialogListen-request>"
  (cl:format cl:nil "string action~%string subaction~%string query_text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DialogListen-request)))
  "Returns full string definition for message of type 'DialogListen-request"
  (cl:format cl:nil "string action~%string subaction~%string query_text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DialogListen-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'subaction))
     4 (cl:length (cl:slot-value msg 'query_text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DialogListen-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DialogListen-request
    (cl:cons ':action (action msg))
    (cl:cons ':subaction (subaction msg))
    (cl:cons ':query_text (query_text msg))
))
;//! \htmlinclude DialogListen-response.msg.html

(cl:defclass <DialogListen-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass DialogListen-response (<DialogListen-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DialogListen-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DialogListen-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name listen_module-srv:<DialogListen-response> is deprecated: use listen_module-srv:DialogListen-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DialogListen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader listen_module-srv:status-val is deprecated.  Use listen_module-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DialogListen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader listen_module-srv:result-val is deprecated.  Use listen_module-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DialogListen-response>) ostream)
  "Serializes a message object of type '<DialogListen-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DialogListen-response>) istream)
  "Deserializes a message object of type '<DialogListen-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DialogListen-response>)))
  "Returns string type for a service object of type '<DialogListen-response>"
  "listen_module/DialogListenResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DialogListen-response)))
  "Returns string type for a service object of type 'DialogListen-response"
  "listen_module/DialogListenResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DialogListen-response>)))
  "Returns md5sum for a message object of type '<DialogListen-response>"
  "56cb91b1044347ee934e8b6c5a253efa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DialogListen-response)))
  "Returns md5sum for a message object of type 'DialogListen-response"
  "56cb91b1044347ee934e8b6c5a253efa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DialogListen-response>)))
  "Returns full string definition for message of type '<DialogListen-response>"
  (cl:format cl:nil "bool status~%string result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DialogListen-response)))
  "Returns full string definition for message of type 'DialogListen-response"
  (cl:format cl:nil "bool status~%string result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DialogListen-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DialogListen-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DialogListen-response
    (cl:cons ':status (status msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DialogListen)))
  'DialogListen-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DialogListen)))
  'DialogListen-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DialogListen)))
  "Returns string type for a service object of type '<DialogListen>"
  "listen_module/DialogListen")