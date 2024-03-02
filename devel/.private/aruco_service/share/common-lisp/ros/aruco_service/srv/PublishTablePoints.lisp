; Auto-generated. Do not edit!


(cl:in-package aruco_service-srv)


;//! \htmlinclude PublishTablePoints-request.msg.html

(cl:defclass <PublishTablePoints-request> (roslisp-msg-protocol:ros-message)
  ((table
    :reader table
    :initarg :table
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PublishTablePoints-request (<PublishTablePoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PublishTablePoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PublishTablePoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_service-srv:<PublishTablePoints-request> is deprecated: use aruco_service-srv:PublishTablePoints-request instead.")))

(cl:ensure-generic-function 'table-val :lambda-list '(m))
(cl:defmethod table-val ((m <PublishTablePoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:table-val is deprecated.  Use aruco_service-srv:table instead.")
  (table m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PublishTablePoints-request>) ostream)
  "Serializes a message object of type '<PublishTablePoints-request>"
  (cl:let* ((signed (cl:slot-value msg 'table)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PublishTablePoints-request>) istream)
  "Deserializes a message object of type '<PublishTablePoints-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'table) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PublishTablePoints-request>)))
  "Returns string type for a service object of type '<PublishTablePoints-request>"
  "aruco_service/PublishTablePointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublishTablePoints-request)))
  "Returns string type for a service object of type 'PublishTablePoints-request"
  "aruco_service/PublishTablePointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PublishTablePoints-request>)))
  "Returns md5sum for a message object of type '<PublishTablePoints-request>"
  "4eaecc5d02ae2f2661dfa53121841fde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PublishTablePoints-request)))
  "Returns md5sum for a message object of type 'PublishTablePoints-request"
  "4eaecc5d02ae2f2661dfa53121841fde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PublishTablePoints-request>)))
  "Returns full string definition for message of type '<PublishTablePoints-request>"
  (cl:format cl:nil "int8 table~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PublishTablePoints-request)))
  "Returns full string definition for message of type 'PublishTablePoints-request"
  (cl:format cl:nil "int8 table~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PublishTablePoints-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PublishTablePoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PublishTablePoints-request
    (cl:cons ':table (table msg))
))
;//! \htmlinclude PublishTablePoints-response.msg.html

(cl:defclass <PublishTablePoints-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PublishTablePoints-response (<PublishTablePoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PublishTablePoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PublishTablePoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_service-srv:<PublishTablePoints-response> is deprecated: use aruco_service-srv:PublishTablePoints-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PublishTablePoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:success-val is deprecated.  Use aruco_service-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PublishTablePoints-response>) ostream)
  "Serializes a message object of type '<PublishTablePoints-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PublishTablePoints-response>) istream)
  "Deserializes a message object of type '<PublishTablePoints-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PublishTablePoints-response>)))
  "Returns string type for a service object of type '<PublishTablePoints-response>"
  "aruco_service/PublishTablePointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublishTablePoints-response)))
  "Returns string type for a service object of type 'PublishTablePoints-response"
  "aruco_service/PublishTablePointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PublishTablePoints-response>)))
  "Returns md5sum for a message object of type '<PublishTablePoints-response>"
  "4eaecc5d02ae2f2661dfa53121841fde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PublishTablePoints-response)))
  "Returns md5sum for a message object of type 'PublishTablePoints-response"
  "4eaecc5d02ae2f2661dfa53121841fde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PublishTablePoints-response>)))
  "Returns full string definition for message of type '<PublishTablePoints-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PublishTablePoints-response)))
  "Returns full string definition for message of type 'PublishTablePoints-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PublishTablePoints-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PublishTablePoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PublishTablePoints-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PublishTablePoints)))
  'PublishTablePoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PublishTablePoints)))
  'PublishTablePoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublishTablePoints)))
  "Returns string type for a service object of type '<PublishTablePoints>"
  "aruco_service/PublishTablePoints")