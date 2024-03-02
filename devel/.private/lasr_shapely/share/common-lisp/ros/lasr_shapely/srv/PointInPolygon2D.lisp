; Auto-generated. Do not edit!


(cl:in-package lasr_shapely-srv)


;//! \htmlinclude PointInPolygon2D-request.msg.html

(cl:defclass <PointInPolygon2D-request> (roslisp-msg-protocol:ros-message)
  ((polygon
    :reader polygon
    :initarg :polygon
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass PointInPolygon2D-request (<PointInPolygon2D-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointInPolygon2D-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointInPolygon2D-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_shapely-srv:<PointInPolygon2D-request> is deprecated: use lasr_shapely-srv:PointInPolygon2D-request instead.")))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <PointInPolygon2D-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_shapely-srv:polygon-val is deprecated.  Use lasr_shapely-srv:polygon instead.")
  (polygon m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PointInPolygon2D-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_shapely-srv:x-val is deprecated.  Use lasr_shapely-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PointInPolygon2D-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_shapely-srv:y-val is deprecated.  Use lasr_shapely-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointInPolygon2D-request>) ostream)
  "Serializes a message object of type '<PointInPolygon2D-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'polygon))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointInPolygon2D-request>) istream)
  "Deserializes a message object of type '<PointInPolygon2D-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointInPolygon2D-request>)))
  "Returns string type for a service object of type '<PointInPolygon2D-request>"
  "lasr_shapely/PointInPolygon2DRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointInPolygon2D-request)))
  "Returns string type for a service object of type 'PointInPolygon2D-request"
  "lasr_shapely/PointInPolygon2DRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointInPolygon2D-request>)))
  "Returns md5sum for a message object of type '<PointInPolygon2D-request>"
  "76bc48be6593836043514f12c05ab698")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointInPolygon2D-request)))
  "Returns md5sum for a message object of type 'PointInPolygon2D-request"
  "76bc48be6593836043514f12c05ab698")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointInPolygon2D-request>)))
  "Returns full string definition for message of type '<PointInPolygon2D-request>"
  (cl:format cl:nil "# 1D-array of ordered pairs of points (connected by edge) that define the polygon~%float32[] polygon~%# X coordinate of point~%float32 x~%# Y coordinate of point~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointInPolygon2D-request)))
  "Returns full string definition for message of type 'PointInPolygon2D-request"
  (cl:format cl:nil "# 1D-array of ordered pairs of points (connected by edge) that define the polygon~%float32[] polygon~%# X coordinate of point~%float32 x~%# Y coordinate of point~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointInPolygon2D-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointInPolygon2D-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PointInPolygon2D-request
    (cl:cons ':polygon (polygon msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude PointInPolygon2D-response.msg.html

(cl:defclass <PointInPolygon2D-response> (roslisp-msg-protocol:ros-message)
  ((inside
    :reader inside
    :initarg :inside
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PointInPolygon2D-response (<PointInPolygon2D-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointInPolygon2D-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointInPolygon2D-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_shapely-srv:<PointInPolygon2D-response> is deprecated: use lasr_shapely-srv:PointInPolygon2D-response instead.")))

(cl:ensure-generic-function 'inside-val :lambda-list '(m))
(cl:defmethod inside-val ((m <PointInPolygon2D-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_shapely-srv:inside-val is deprecated.  Use lasr_shapely-srv:inside instead.")
  (inside m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointInPolygon2D-response>) ostream)
  "Serializes a message object of type '<PointInPolygon2D-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inside) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointInPolygon2D-response>) istream)
  "Deserializes a message object of type '<PointInPolygon2D-response>"
    (cl:setf (cl:slot-value msg 'inside) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointInPolygon2D-response>)))
  "Returns string type for a service object of type '<PointInPolygon2D-response>"
  "lasr_shapely/PointInPolygon2DResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointInPolygon2D-response)))
  "Returns string type for a service object of type 'PointInPolygon2D-response"
  "lasr_shapely/PointInPolygon2DResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointInPolygon2D-response>)))
  "Returns md5sum for a message object of type '<PointInPolygon2D-response>"
  "76bc48be6593836043514f12c05ab698")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointInPolygon2D-response)))
  "Returns md5sum for a message object of type 'PointInPolygon2D-response"
  "76bc48be6593836043514f12c05ab698")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointInPolygon2D-response>)))
  "Returns full string definition for message of type '<PointInPolygon2D-response>"
  (cl:format cl:nil "# Whether the point is inside the polygon~%bool inside~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointInPolygon2D-response)))
  "Returns full string definition for message of type 'PointInPolygon2D-response"
  (cl:format cl:nil "# Whether the point is inside the polygon~%bool inside~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointInPolygon2D-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointInPolygon2D-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PointInPolygon2D-response
    (cl:cons ':inside (inside msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PointInPolygon2D)))
  'PointInPolygon2D-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PointInPolygon2D)))
  'PointInPolygon2D-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointInPolygon2D)))
  "Returns string type for a service object of type '<PointInPolygon2D>"
  "lasr_shapely/PointInPolygon2D")