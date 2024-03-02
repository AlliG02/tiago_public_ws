; Auto-generated. Do not edit!


(cl:in-package object_interest_tracking-srv)


;//! \htmlinclude Tdr-request.msg.html

(cl:defclass <Tdr-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Tdr-request (<Tdr-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tdr-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tdr-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_interest_tracking-srv:<Tdr-request> is deprecated: use object_interest_tracking-srv:Tdr-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tdr-request>) ostream)
  "Serializes a message object of type '<Tdr-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tdr-request>) istream)
  "Deserializes a message object of type '<Tdr-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tdr-request>)))
  "Returns string type for a service object of type '<Tdr-request>"
  "object_interest_tracking/TdrRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tdr-request)))
  "Returns string type for a service object of type 'Tdr-request"
  "object_interest_tracking/TdrRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tdr-request>)))
  "Returns md5sum for a message object of type '<Tdr-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tdr-request)))
  "Returns md5sum for a message object of type 'Tdr-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tdr-request>)))
  "Returns full string definition for message of type '<Tdr-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tdr-request)))
  "Returns full string definition for message of type 'Tdr-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tdr-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tdr-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Tdr-request
))
;//! \htmlinclude Tdr-response.msg.html

(cl:defclass <Tdr-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Tdr-response (<Tdr-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tdr-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tdr-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_interest_tracking-srv:<Tdr-response> is deprecated: use object_interest_tracking-srv:Tdr-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tdr-response>) ostream)
  "Serializes a message object of type '<Tdr-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tdr-response>) istream)
  "Deserializes a message object of type '<Tdr-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tdr-response>)))
  "Returns string type for a service object of type '<Tdr-response>"
  "object_interest_tracking/TdrResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tdr-response)))
  "Returns string type for a service object of type 'Tdr-response"
  "object_interest_tracking/TdrResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tdr-response>)))
  "Returns md5sum for a message object of type '<Tdr-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tdr-response)))
  "Returns md5sum for a message object of type 'Tdr-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tdr-response>)))
  "Returns full string definition for message of type '<Tdr-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tdr-response)))
  "Returns full string definition for message of type 'Tdr-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tdr-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tdr-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Tdr-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Tdr)))
  'Tdr-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Tdr)))
  'Tdr-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tdr)))
  "Returns string type for a service object of type '<Tdr>"
  "object_interest_tracking/Tdr")