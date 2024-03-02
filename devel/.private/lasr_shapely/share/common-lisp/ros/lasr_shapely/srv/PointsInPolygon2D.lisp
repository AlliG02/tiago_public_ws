; Auto-generated. Do not edit!


(cl:in-package lasr_shapely-srv)


;//! \htmlinclude PointsInPolygon2D-request.msg.html

(cl:defclass <PointsInPolygon2D-request> (roslisp-msg-protocol:ros-message)
  ((polygon
    :reader polygon
    :initarg :polygon
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (points
    :reader points
    :initarg :points
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PointsInPolygon2D-request (<PointsInPolygon2D-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointsInPolygon2D-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointsInPolygon2D-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_shapely-srv:<PointsInPolygon2D-request> is deprecated: use lasr_shapely-srv:PointsInPolygon2D-request instead.")))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <PointsInPolygon2D-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_shapely-srv:polygon-val is deprecated.  Use lasr_shapely-srv:polygon instead.")
  (polygon m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PointsInPolygon2D-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_shapely-srv:points-val is deprecated.  Use lasr_shapely-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointsInPolygon2D-request>) ostream)
  "Serializes a message object of type '<PointsInPolygon2D-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointsInPolygon2D-request>) istream)
  "Deserializes a message object of type '<PointsInPolygon2D-request>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointsInPolygon2D-request>)))
  "Returns string type for a service object of type '<PointsInPolygon2D-request>"
  "lasr_shapely/PointsInPolygon2DRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointsInPolygon2D-request)))
  "Returns string type for a service object of type 'PointsInPolygon2D-request"
  "lasr_shapely/PointsInPolygon2DRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointsInPolygon2D-request>)))
  "Returns md5sum for a message object of type '<PointsInPolygon2D-request>"
  "839dd681ef3f1c414d3202b24dd84813")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointsInPolygon2D-request)))
  "Returns md5sum for a message object of type 'PointsInPolygon2D-request"
  "839dd681ef3f1c414d3202b24dd84813")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointsInPolygon2D-request>)))
  "Returns full string definition for message of type '<PointsInPolygon2D-request>"
  (cl:format cl:nil "# 1D-array of ordered pairs of points (connected by edge) that define the polygon~%float32[] polygon~%# 1D-array of pairs of points~%float32[] points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointsInPolygon2D-request)))
  "Returns full string definition for message of type 'PointsInPolygon2D-request"
  (cl:format cl:nil "# 1D-array of ordered pairs of points (connected by edge) that define the polygon~%float32[] polygon~%# 1D-array of pairs of points~%float32[] points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointsInPolygon2D-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointsInPolygon2D-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PointsInPolygon2D-request
    (cl:cons ':polygon (polygon msg))
    (cl:cons ':points (points msg))
))
;//! \htmlinclude PointsInPolygon2D-response.msg.html

(cl:defclass <PointsInPolygon2D-response> (roslisp-msg-protocol:ros-message)
  ((inside
    :reader inside
    :initarg :inside
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass PointsInPolygon2D-response (<PointsInPolygon2D-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointsInPolygon2D-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointsInPolygon2D-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_shapely-srv:<PointsInPolygon2D-response> is deprecated: use lasr_shapely-srv:PointsInPolygon2D-response instead.")))

(cl:ensure-generic-function 'inside-val :lambda-list '(m))
(cl:defmethod inside-val ((m <PointsInPolygon2D-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lasr_shapely-srv:inside-val is deprecated.  Use lasr_shapely-srv:inside instead.")
  (inside m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointsInPolygon2D-response>) ostream)
  "Serializes a message object of type '<PointsInPolygon2D-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'inside))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'inside))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointsInPolygon2D-response>) istream)
  "Deserializes a message object of type '<PointsInPolygon2D-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'inside) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'inside)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointsInPolygon2D-response>)))
  "Returns string type for a service object of type '<PointsInPolygon2D-response>"
  "lasr_shapely/PointsInPolygon2DResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointsInPolygon2D-response)))
  "Returns string type for a service object of type 'PointsInPolygon2D-response"
  "lasr_shapely/PointsInPolygon2DResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointsInPolygon2D-response>)))
  "Returns md5sum for a message object of type '<PointsInPolygon2D-response>"
  "839dd681ef3f1c414d3202b24dd84813")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointsInPolygon2D-response)))
  "Returns md5sum for a message object of type 'PointsInPolygon2D-response"
  "839dd681ef3f1c414d3202b24dd84813")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointsInPolygon2D-response>)))
  "Returns full string definition for message of type '<PointsInPolygon2D-response>"
  (cl:format cl:nil "# Whether the points are inside the polygon~%bool[] inside~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointsInPolygon2D-response)))
  "Returns full string definition for message of type 'PointsInPolygon2D-response"
  (cl:format cl:nil "# Whether the points are inside the polygon~%bool[] inside~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointsInPolygon2D-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'inside) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointsInPolygon2D-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PointsInPolygon2D-response
    (cl:cons ':inside (inside msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PointsInPolygon2D)))
  'PointsInPolygon2D-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PointsInPolygon2D)))
  'PointsInPolygon2D-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointsInPolygon2D)))
  "Returns string type for a service object of type '<PointsInPolygon2D>"
  "lasr_shapely/PointsInPolygon2D")