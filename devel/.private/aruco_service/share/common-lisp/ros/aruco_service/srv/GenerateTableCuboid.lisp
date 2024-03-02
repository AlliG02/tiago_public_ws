; Auto-generated. Do not edit!


(cl:in-package aruco_service-srv)


;//! \htmlinclude GenerateTableCuboid-request.msg.html

(cl:defclass <GenerateTableCuboid-request> (roslisp-msg-protocol:ros-message)
  ((table
    :reader table
    :initarg :table
    :type cl:fixnum
    :initform 0)
   (long_side
    :reader long_side
    :initarg :long_side
    :type cl:float
    :initform 0.0)
   (short_side
    :reader short_side
    :initarg :short_side
    :type cl:float
    :initform 0.0)
   (padding
    :reader padding
    :initarg :padding
    :type cl:float
    :initform 0.0)
   (is_rect
    :reader is_rect
    :initarg :is_rect
    :type cl:boolean
    :initform cl:nil)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass GenerateTableCuboid-request (<GenerateTableCuboid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateTableCuboid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateTableCuboid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_service-srv:<GenerateTableCuboid-request> is deprecated: use aruco_service-srv:GenerateTableCuboid-request instead.")))

(cl:ensure-generic-function 'table-val :lambda-list '(m))
(cl:defmethod table-val ((m <GenerateTableCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:table-val is deprecated.  Use aruco_service-srv:table instead.")
  (table m))

(cl:ensure-generic-function 'long_side-val :lambda-list '(m))
(cl:defmethod long_side-val ((m <GenerateTableCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:long_side-val is deprecated.  Use aruco_service-srv:long_side instead.")
  (long_side m))

(cl:ensure-generic-function 'short_side-val :lambda-list '(m))
(cl:defmethod short_side-val ((m <GenerateTableCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:short_side-val is deprecated.  Use aruco_service-srv:short_side instead.")
  (short_side m))

(cl:ensure-generic-function 'padding-val :lambda-list '(m))
(cl:defmethod padding-val ((m <GenerateTableCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:padding-val is deprecated.  Use aruco_service-srv:padding instead.")
  (padding m))

(cl:ensure-generic-function 'is_rect-val :lambda-list '(m))
(cl:defmethod is_rect-val ((m <GenerateTableCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:is_rect-val is deprecated.  Use aruco_service-srv:is_rect instead.")
  (is_rect m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <GenerateTableCuboid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:radius-val is deprecated.  Use aruco_service-srv:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateTableCuboid-request>) ostream)
  "Serializes a message object of type '<GenerateTableCuboid-request>"
  (cl:let* ((signed (cl:slot-value msg 'table)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'long_side))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'short_side))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'padding))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_rect) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateTableCuboid-request>) istream)
  "Deserializes a message object of type '<GenerateTableCuboid-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'table) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'long_side) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'short_side) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'padding) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_rect) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateTableCuboid-request>)))
  "Returns string type for a service object of type '<GenerateTableCuboid-request>"
  "aruco_service/GenerateTableCuboidRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateTableCuboid-request)))
  "Returns string type for a service object of type 'GenerateTableCuboid-request"
  "aruco_service/GenerateTableCuboidRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateTableCuboid-request>)))
  "Returns md5sum for a message object of type '<GenerateTableCuboid-request>"
  "2c1fa4b624df92535558f89b72b88a87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateTableCuboid-request)))
  "Returns md5sum for a message object of type 'GenerateTableCuboid-request"
  "2c1fa4b624df92535558f89b72b88a87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateTableCuboid-request>)))
  "Returns full string definition for message of type '<GenerateTableCuboid-request>"
  (cl:format cl:nil "int8 table~%float64 long_side~%float64 short_side~%float64 padding~%bool is_rect~%float64 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateTableCuboid-request)))
  "Returns full string definition for message of type 'GenerateTableCuboid-request"
  (cl:format cl:nil "int8 table~%float64 long_side~%float64 short_side~%float64 padding~%bool is_rect~%float64 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateTableCuboid-request>))
  (cl:+ 0
     1
     8
     8
     8
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateTableCuboid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateTableCuboid-request
    (cl:cons ':table (table msg))
    (cl:cons ':long_side (long_side msg))
    (cl:cons ':short_side (short_side msg))
    (cl:cons ':padding (padding msg))
    (cl:cons ':is_rect (is_rect msg))
    (cl:cons ':radius (radius msg))
))
;//! \htmlinclude GenerateTableCuboid-response.msg.html

(cl:defclass <GenerateTableCuboid-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GenerateTableCuboid-response (<GenerateTableCuboid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateTableCuboid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateTableCuboid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_service-srv:<GenerateTableCuboid-response> is deprecated: use aruco_service-srv:GenerateTableCuboid-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GenerateTableCuboid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_service-srv:success-val is deprecated.  Use aruco_service-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateTableCuboid-response>) ostream)
  "Serializes a message object of type '<GenerateTableCuboid-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateTableCuboid-response>) istream)
  "Deserializes a message object of type '<GenerateTableCuboid-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateTableCuboid-response>)))
  "Returns string type for a service object of type '<GenerateTableCuboid-response>"
  "aruco_service/GenerateTableCuboidResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateTableCuboid-response)))
  "Returns string type for a service object of type 'GenerateTableCuboid-response"
  "aruco_service/GenerateTableCuboidResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateTableCuboid-response>)))
  "Returns md5sum for a message object of type '<GenerateTableCuboid-response>"
  "2c1fa4b624df92535558f89b72b88a87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateTableCuboid-response)))
  "Returns md5sum for a message object of type 'GenerateTableCuboid-response"
  "2c1fa4b624df92535558f89b72b88a87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateTableCuboid-response>)))
  "Returns full string definition for message of type '<GenerateTableCuboid-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateTableCuboid-response)))
  "Returns full string definition for message of type 'GenerateTableCuboid-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateTableCuboid-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateTableCuboid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateTableCuboid-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateTableCuboid)))
  'GenerateTableCuboid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateTableCuboid)))
  'GenerateTableCuboid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateTableCuboid)))
  "Returns string type for a service object of type '<GenerateTableCuboid>"
  "aruco_service/GenerateTableCuboid")