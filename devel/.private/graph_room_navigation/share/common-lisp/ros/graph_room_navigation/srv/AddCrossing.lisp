; Auto-generated. Do not edit!


(cl:in-package graph_room_navigation-srv)


;//! \htmlinclude AddCrossing-request.msg.html

(cl:defclass <AddCrossing-request> (roslisp-msg-protocol:ros-message)
  ((room1
    :reader room1
    :initarg :room1
    :type cl:string
    :initform "")
   (door1
    :reader door1
    :initarg :door1
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (room2
    :reader room2
    :initarg :room2
    :type cl:string
    :initform "")
   (door2
    :reader door2
    :initarg :door2
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass AddCrossing-request (<AddCrossing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddCrossing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddCrossing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_room_navigation-srv:<AddCrossing-request> is deprecated: use graph_room_navigation-srv:AddCrossing-request instead.")))

(cl:ensure-generic-function 'room1-val :lambda-list '(m))
(cl:defmethod room1-val ((m <AddCrossing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:room1-val is deprecated.  Use graph_room_navigation-srv:room1 instead.")
  (room1 m))

(cl:ensure-generic-function 'door1-val :lambda-list '(m))
(cl:defmethod door1-val ((m <AddCrossing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:door1-val is deprecated.  Use graph_room_navigation-srv:door1 instead.")
  (door1 m))

(cl:ensure-generic-function 'room2-val :lambda-list '(m))
(cl:defmethod room2-val ((m <AddCrossing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:room2-val is deprecated.  Use graph_room_navigation-srv:room2 instead.")
  (room2 m))

(cl:ensure-generic-function 'door2-val :lambda-list '(m))
(cl:defmethod door2-val ((m <AddCrossing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:door2-val is deprecated.  Use graph_room_navigation-srv:door2 instead.")
  (door2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddCrossing-request>) ostream)
  "Serializes a message object of type '<AddCrossing-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'room1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'room1))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'door1) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'room2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'room2))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'door2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddCrossing-request>) istream)
  "Deserializes a message object of type '<AddCrossing-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'room1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'room1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'door1) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'room2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'room2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'door2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddCrossing-request>)))
  "Returns string type for a service object of type '<AddCrossing-request>"
  "graph_room_navigation/AddCrossingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCrossing-request)))
  "Returns string type for a service object of type 'AddCrossing-request"
  "graph_room_navigation/AddCrossingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddCrossing-request>)))
  "Returns md5sum for a message object of type '<AddCrossing-request>"
  "dc1dde44f0b634a483bc0645dd3270ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddCrossing-request)))
  "Returns md5sum for a message object of type 'AddCrossing-request"
  "dc1dde44f0b634a483bc0645dd3270ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddCrossing-request>)))
  "Returns full string definition for message of type '<AddCrossing-request>"
  (cl:format cl:nil "string room1~%geometry_msgs/Point door1~%string room2~%geometry_msgs/Point door2~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddCrossing-request)))
  "Returns full string definition for message of type 'AddCrossing-request"
  (cl:format cl:nil "string room1~%geometry_msgs/Point door1~%string room2~%geometry_msgs/Point door2~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddCrossing-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'room1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'door1))
     4 (cl:length (cl:slot-value msg 'room2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'door2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddCrossing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddCrossing-request
    (cl:cons ':room1 (room1 msg))
    (cl:cons ':door1 (door1 msg))
    (cl:cons ':room2 (room2 msg))
    (cl:cons ':door2 (door2 msg))
))
;//! \htmlinclude AddCrossing-response.msg.html

(cl:defclass <AddCrossing-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddCrossing-response (<AddCrossing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddCrossing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddCrossing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_room_navigation-srv:<AddCrossing-response> is deprecated: use graph_room_navigation-srv:AddCrossing-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddCrossing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:success-val is deprecated.  Use graph_room_navigation-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddCrossing-response>) ostream)
  "Serializes a message object of type '<AddCrossing-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddCrossing-response>) istream)
  "Deserializes a message object of type '<AddCrossing-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddCrossing-response>)))
  "Returns string type for a service object of type '<AddCrossing-response>"
  "graph_room_navigation/AddCrossingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCrossing-response)))
  "Returns string type for a service object of type 'AddCrossing-response"
  "graph_room_navigation/AddCrossingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddCrossing-response>)))
  "Returns md5sum for a message object of type '<AddCrossing-response>"
  "dc1dde44f0b634a483bc0645dd3270ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddCrossing-response)))
  "Returns md5sum for a message object of type 'AddCrossing-response"
  "dc1dde44f0b634a483bc0645dd3270ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddCrossing-response>)))
  "Returns full string definition for message of type '<AddCrossing-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddCrossing-response)))
  "Returns full string definition for message of type 'AddCrossing-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddCrossing-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddCrossing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddCrossing-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddCrossing)))
  'AddCrossing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddCrossing)))
  'AddCrossing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCrossing)))
  "Returns string type for a service object of type '<AddCrossing>"
  "graph_room_navigation/AddCrossing")