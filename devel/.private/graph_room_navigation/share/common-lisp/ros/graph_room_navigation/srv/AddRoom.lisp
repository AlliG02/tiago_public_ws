; Auto-generated. Do not edit!


(cl:in-package graph_room_navigation-srv)


;//! \htmlinclude AddRoom-request.msg.html

(cl:defclass <AddRoom-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (a
    :reader a
    :initarg :a
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (b
    :reader b
    :initarg :b
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass AddRoom-request (<AddRoom-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddRoom-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddRoom-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_room_navigation-srv:<AddRoom-request> is deprecated: use graph_room_navigation-srv:AddRoom-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AddRoom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:name-val is deprecated.  Use graph_room_navigation-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <AddRoom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:a-val is deprecated.  Use graph_room_navigation-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <AddRoom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:b-val is deprecated.  Use graph_room_navigation-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddRoom-request>) ostream)
  "Serializes a message object of type '<AddRoom-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'b) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddRoom-request>) istream)
  "Deserializes a message object of type '<AddRoom-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'b) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddRoom-request>)))
  "Returns string type for a service object of type '<AddRoom-request>"
  "graph_room_navigation/AddRoomRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddRoom-request)))
  "Returns string type for a service object of type 'AddRoom-request"
  "graph_room_navigation/AddRoomRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddRoom-request>)))
  "Returns md5sum for a message object of type '<AddRoom-request>"
  "a8afbfcd27d4409c8fc3633455b491d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddRoom-request)))
  "Returns md5sum for a message object of type 'AddRoom-request"
  "a8afbfcd27d4409c8fc3633455b491d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddRoom-request>)))
  "Returns full string definition for message of type '<AddRoom-request>"
  (cl:format cl:nil "string name~%geometry_msgs/Point a~%geometry_msgs/Point b~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddRoom-request)))
  "Returns full string definition for message of type 'AddRoom-request"
  (cl:format cl:nil "string name~%geometry_msgs/Point a~%geometry_msgs/Point b~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddRoom-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddRoom-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddRoom-request
    (cl:cons ':name (name msg))
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude AddRoom-response.msg.html

(cl:defclass <AddRoom-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddRoom-response (<AddRoom-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddRoom-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddRoom-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_room_navigation-srv:<AddRoom-response> is deprecated: use graph_room_navigation-srv:AddRoom-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddRoom-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:success-val is deprecated.  Use graph_room_navigation-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddRoom-response>) ostream)
  "Serializes a message object of type '<AddRoom-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddRoom-response>) istream)
  "Deserializes a message object of type '<AddRoom-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddRoom-response>)))
  "Returns string type for a service object of type '<AddRoom-response>"
  "graph_room_navigation/AddRoomResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddRoom-response)))
  "Returns string type for a service object of type 'AddRoom-response"
  "graph_room_navigation/AddRoomResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddRoom-response>)))
  "Returns md5sum for a message object of type '<AddRoom-response>"
  "a8afbfcd27d4409c8fc3633455b491d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddRoom-response)))
  "Returns md5sum for a message object of type 'AddRoom-response"
  "a8afbfcd27d4409c8fc3633455b491d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddRoom-response>)))
  "Returns full string definition for message of type '<AddRoom-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddRoom-response)))
  "Returns full string definition for message of type 'AddRoom-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddRoom-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddRoom-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddRoom-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddRoom)))
  'AddRoom-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddRoom)))
  'AddRoom-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddRoom)))
  "Returns string type for a service object of type '<AddRoom>"
  "graph_room_navigation/AddRoom")