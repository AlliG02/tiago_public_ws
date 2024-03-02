; Auto-generated. Do not edit!


(cl:in-package aruco_service-srv)


;//! \htmlinclude SaveNavigationPoint-request.msg.html

(cl:defclass <SaveNavigationPoint-request> (roslisp-msg-protocol:ros-message)
  ((table
    :reader table
    :initarg :table
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SaveNavigationPoint-request (<SaveNavigationPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveNavigationPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveNavigationPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_service-srv:<SaveNavigationPoint-request> is deprecated: use aruco_service-srv:SaveNavigationPoint-request instead.")))

(cl:ensure-generic-function 'table-val :lambda-list '(m))
(cl:defmethod table-val ((m <SaveNavigationPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:table-val is deprecated.  Use aruco_service-srv:table instead.")
  (table m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveNavigationPoint-request>) ostream)
  "Serializes a message object of type '<SaveNavigationPoint-request>"
  (cl:let* ((signed (cl:slot-value msg 'table)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveNavigationPoint-request>) istream)
  "Deserializes a message object of type '<SaveNavigationPoint-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'table) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveNavigationPoint-request>)))
  "Returns string type for a service object of type '<SaveNavigationPoint-request>"
  "aruco_service/SaveNavigationPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveNavigationPoint-request)))
  "Returns string type for a service object of type 'SaveNavigationPoint-request"
  "aruco_service/SaveNavigationPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveNavigationPoint-request>)))
  "Returns md5sum for a message object of type '<SaveNavigationPoint-request>"
  "4eaecc5d02ae2f2661dfa53121841fde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveNavigationPoint-request)))
  "Returns md5sum for a message object of type 'SaveNavigationPoint-request"
  "4eaecc5d02ae2f2661dfa53121841fde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveNavigationPoint-request>)))
  "Returns full string definition for message of type '<SaveNavigationPoint-request>"
  (cl:format cl:nil "int8 table~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveNavigationPoint-request)))
  "Returns full string definition for message of type 'SaveNavigationPoint-request"
  (cl:format cl:nil "int8 table~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveNavigationPoint-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveNavigationPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveNavigationPoint-request
    (cl:cons ':table (table msg))
))
;//! \htmlinclude SaveNavigationPoint-response.msg.html

(cl:defclass <SaveNavigationPoint-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveNavigationPoint-response (<SaveNavigationPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveNavigationPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveNavigationPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_service-srv:<SaveNavigationPoint-response> is deprecated: use aruco_service-srv:SaveNavigationPoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveNavigationPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:success-val is deprecated.  Use aruco_service-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveNavigationPoint-response>) ostream)
  "Serializes a message object of type '<SaveNavigationPoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveNavigationPoint-response>) istream)
  "Deserializes a message object of type '<SaveNavigationPoint-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveNavigationPoint-response>)))
  "Returns string type for a service object of type '<SaveNavigationPoint-response>"
  "aruco_service/SaveNavigationPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveNavigationPoint-response)))
  "Returns string type for a service object of type 'SaveNavigationPoint-response"
  "aruco_service/SaveNavigationPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveNavigationPoint-response>)))
  "Returns md5sum for a message object of type '<SaveNavigationPoint-response>"
  "4eaecc5d02ae2f2661dfa53121841fde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveNavigationPoint-response)))
  "Returns md5sum for a message object of type 'SaveNavigationPoint-response"
  "4eaecc5d02ae2f2661dfa53121841fde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveNavigationPoint-response>)))
  "Returns full string definition for message of type '<SaveNavigationPoint-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveNavigationPoint-response)))
  "Returns full string definition for message of type 'SaveNavigationPoint-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveNavigationPoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveNavigationPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveNavigationPoint-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveNavigationPoint)))
  'SaveNavigationPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveNavigationPoint)))
  'SaveNavigationPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveNavigationPoint)))
  "Returns string type for a service object of type '<SaveNavigationPoint>"
  "aruco_service/SaveNavigationPoint")