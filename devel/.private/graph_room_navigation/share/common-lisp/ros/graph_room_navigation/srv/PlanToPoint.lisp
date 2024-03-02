; Auto-generated. Do not edit!


(cl:in-package graph_room_navigation-srv)


;//! \htmlinclude PlanToPoint-request.msg.html

(cl:defclass <PlanToPoint-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass PlanToPoint-request (<PlanToPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanToPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanToPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_room_navigation-srv:<PlanToPoint-request> is deprecated: use graph_room_navigation-srv:PlanToPoint-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PlanToPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:goal-val is deprecated.  Use graph_room_navigation-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanToPoint-request>) ostream)
  "Serializes a message object of type '<PlanToPoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanToPoint-request>) istream)
  "Deserializes a message object of type '<PlanToPoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanToPoint-request>)))
  "Returns string type for a service object of type '<PlanToPoint-request>"
  "graph_room_navigation/PlanToPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanToPoint-request)))
  "Returns string type for a service object of type 'PlanToPoint-request"
  "graph_room_navigation/PlanToPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanToPoint-request>)))
  "Returns md5sum for a message object of type '<PlanToPoint-request>"
  "b4e6b6656aa551fdc5d5b4c72e95d532")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanToPoint-request)))
  "Returns md5sum for a message object of type 'PlanToPoint-request"
  "b4e6b6656aa551fdc5d5b4c72e95d532")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanToPoint-request>)))
  "Returns full string definition for message of type '<PlanToPoint-request>"
  (cl:format cl:nil "geometry_msgs/Point goal~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanToPoint-request)))
  "Returns full string definition for message of type 'PlanToPoint-request"
  (cl:format cl:nil "geometry_msgs/Point goal~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanToPoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanToPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanToPoint-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude PlanToPoint-response.msg.html

(cl:defclass <PlanToPoint-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass PlanToPoint-response (<PlanToPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanToPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanToPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_room_navigation-srv:<PlanToPoint-response> is deprecated: use graph_room_navigation-srv:PlanToPoint-response instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PlanToPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:points-val is deprecated.  Use graph_room_navigation-srv:points instead.")
  (points m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlanToPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graph_room_navigation-srv:success-val is deprecated.  Use graph_room_navigation-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanToPoint-response>) ostream)
  "Serializes a message object of type '<PlanToPoint-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanToPoint-response>) istream)
  "Deserializes a message object of type '<PlanToPoint-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanToPoint-response>)))
  "Returns string type for a service object of type '<PlanToPoint-response>"
  "graph_room_navigation/PlanToPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanToPoint-response)))
  "Returns string type for a service object of type 'PlanToPoint-response"
  "graph_room_navigation/PlanToPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanToPoint-response>)))
  "Returns md5sum for a message object of type '<PlanToPoint-response>"
  "b4e6b6656aa551fdc5d5b4c72e95d532")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanToPoint-response)))
  "Returns md5sum for a message object of type 'PlanToPoint-response"
  "b4e6b6656aa551fdc5d5b4c72e95d532")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanToPoint-response>)))
  "Returns full string definition for message of type '<PlanToPoint-response>"
  (cl:format cl:nil "geometry_msgs/Point[] points~%bool success~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanToPoint-response)))
  "Returns full string definition for message of type 'PlanToPoint-response"
  (cl:format cl:nil "geometry_msgs/Point[] points~%bool success~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanToPoint-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanToPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanToPoint-response
    (cl:cons ':points (points msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanToPoint)))
  'PlanToPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanToPoint)))
  'PlanToPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanToPoint)))
  "Returns string type for a service object of type '<PlanToPoint>"
  "graph_room_navigation/PlanToPoint")