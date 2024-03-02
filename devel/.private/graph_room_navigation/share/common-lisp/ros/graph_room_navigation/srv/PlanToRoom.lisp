; Auto-generated. Do not edit!


(cl:in-package graph_room_navigation-srv)


;//! \htmlinclude PlanToRoom-request.msg.html

(cl:defclass <PlanToRoom-request> (roslisp-msg-protocol:ros-message)
  ((goal_room
    :reader goal_room
    :initarg :goal_room
    :type cl:string
    :initform ""))
)

(cl:defclass PlanToRoom-request (<PlanToRoom-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanToRoom-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanToRoom-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_room_navigation-srv:<PlanToRoom-request> is deprecated: use graph_room_navigation-srv:PlanToRoom-request instead.")))

(cl:ensure-generic-function 'goal_room-val :lambda-list '(m))
(cl:defmethod goal_room-val ((m <PlanToRoom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:goal_room-val is deprecated.  Use graph_room_navigation-srv:goal_room instead.")
  (goal_room m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanToRoom-request>) ostream)
  "Serializes a message object of type '<PlanToRoom-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_room))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_room))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanToRoom-request>) istream)
  "Deserializes a message object of type '<PlanToRoom-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_room) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_room) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanToRoom-request>)))
  "Returns string type for a service object of type '<PlanToRoom-request>"
  "graph_room_navigation/PlanToRoomRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanToRoom-request)))
  "Returns string type for a service object of type 'PlanToRoom-request"
  "graph_room_navigation/PlanToRoomRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanToRoom-request>)))
  "Returns md5sum for a message object of type '<PlanToRoom-request>"
  "b848b1c4724a2cc042af92e9bebe0e39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanToRoom-request)))
  "Returns md5sum for a message object of type 'PlanToRoom-request"
  "b848b1c4724a2cc042af92e9bebe0e39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanToRoom-request>)))
  "Returns full string definition for message of type '<PlanToRoom-request>"
  (cl:format cl:nil "string goal_room~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanToRoom-request)))
  "Returns full string definition for message of type 'PlanToRoom-request"
  (cl:format cl:nil "string goal_room~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanToRoom-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'goal_room))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanToRoom-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanToRoom-request
    (cl:cons ':goal_room (goal_room msg))
))
;//! \htmlinclude PlanToRoom-response.msg.html

(cl:defclass <PlanToRoom-response> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlanToRoom-response (<PlanToRoom-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanToRoom-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanToRoom-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_room_navigation-srv:<PlanToRoom-response> is deprecated: use graph_room_navigation-srv:PlanToRoom-response instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PlanToRoom-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:points-val is deprecated.  Use graph_room_navigation-srv:points instead.")
  (points m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlanToRoom-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:success-val is deprecated.  Use graph_room_navigation-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanToRoom-response>) ostream)
  "Serializes a message object of type '<PlanToRoom-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanToRoom-response>) istream)
  "Deserializes a message object of type '<PlanToRoom-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanToRoom-response>)))
  "Returns string type for a service object of type '<PlanToRoom-response>"
  "graph_room_navigation/PlanToRoomResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanToRoom-response)))
  "Returns string type for a service object of type 'PlanToRoom-response"
  "graph_room_navigation/PlanToRoomResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanToRoom-response>)))
  "Returns md5sum for a message object of type '<PlanToRoom-response>"
  "b848b1c4724a2cc042af92e9bebe0e39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanToRoom-response)))
  "Returns md5sum for a message object of type 'PlanToRoom-response"
  "b848b1c4724a2cc042af92e9bebe0e39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanToRoom-response>)))
  "Returns full string definition for message of type '<PlanToRoom-response>"
  (cl:format cl:nil "geometry_msgs/Point[] points~%bool success~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanToRoom-response)))
  "Returns full string definition for message of type 'PlanToRoom-response"
  (cl:format cl:nil "geometry_msgs/Point[] points~%bool success~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanToRoom-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanToRoom-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanToRoom-response
    (cl:cons ':points (points msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanToRoom)))
  'PlanToRoom-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanToRoom)))
  'PlanToRoom-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanToRoom)))
  "Returns string type for a service object of type '<PlanToRoom>"
  "graph_room_navigation/PlanToRoom")