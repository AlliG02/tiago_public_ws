; Auto-generated. Do not edit!


(cl:in-package tiago_controllers-srv)


;//! \htmlinclude ArmTorsoPos-request.msg.html

(cl:defclass <ArmTorsoPos-request> (roslisp-msg-protocol:ros-message)
  ((torso_goals
    :reader torso_goals
    :initarg :torso_goals
    :type cl:float
    :initform 0.0)
   (arm_goals
    :reader arm_goals
    :initarg :arm_goals
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (plan
    :reader plan
    :initarg :plan
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ArmTorsoPos-request (<ArmTorsoPos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmTorsoPos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmTorsoPos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiago_controllers-srv:<ArmTorsoPos-request> is deprecated: use tiago_controllers-srv:ArmTorsoPos-request instead.")))

(cl:ensure-generic-function 'torso_goals-val :lambda-list '(m))
(cl:defmethod torso_goals-val ((m <ArmTorsoPos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiago_controllers-srv:torso_goals-val is deprecated.  Use tiago_controllers-srv:torso_goals instead.")
  (torso_goals m))

(cl:ensure-generic-function 'arm_goals-val :lambda-list '(m))
(cl:defmethod arm_goals-val ((m <ArmTorsoPos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiago_controllers-srv:arm_goals-val is deprecated.  Use tiago_controllers-srv:arm_goals instead.")
  (arm_goals m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <ArmTorsoPos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiago_controllers-srv:plan-val is deprecated.  Use tiago_controllers-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmTorsoPos-request>) ostream)
  "Serializes a message object of type '<ArmTorsoPos-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'torso_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arm_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'arm_goals))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'plan) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmTorsoPos-request>) istream)
  "Deserializes a message object of type '<ArmTorsoPos-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torso_goals) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arm_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arm_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'plan) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmTorsoPos-request>)))
  "Returns string type for a service object of type '<ArmTorsoPos-request>"
  "tiago_controllers/ArmTorsoPosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmTorsoPos-request)))
  "Returns string type for a service object of type 'ArmTorsoPos-request"
  "tiago_controllers/ArmTorsoPosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmTorsoPos-request>)))
  "Returns md5sum for a message object of type '<ArmTorsoPos-request>"
  "3f0dca51556e205f687af18e1b29aeb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmTorsoPos-request)))
  "Returns md5sum for a message object of type 'ArmTorsoPos-request"
  "3f0dca51556e205f687af18e1b29aeb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmTorsoPos-request>)))
  "Returns full string definition for message of type '<ArmTorsoPos-request>"
  (cl:format cl:nil "float32 torso_goals~%float32[] arm_goals~%bool plan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmTorsoPos-request)))
  "Returns full string definition for message of type 'ArmTorsoPos-request"
  (cl:format cl:nil "float32 torso_goals~%float32[] arm_goals~%bool plan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmTorsoPos-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arm_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmTorsoPos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmTorsoPos-request
    (cl:cons ':torso_goals (torso_goals msg))
    (cl:cons ':arm_goals (arm_goals msg))
    (cl:cons ':plan (plan msg))
))
;//! \htmlinclude ArmTorsoPos-response.msg.html

(cl:defclass <ArmTorsoPos-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ArmTorsoPos-response (<ArmTorsoPos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmTorsoPos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmTorsoPos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiago_controllers-srv:<ArmTorsoPos-response> is deprecated: use tiago_controllers-srv:ArmTorsoPos-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ArmTorsoPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiago_controllers-srv:result-val is deprecated.  Use tiago_controllers-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmTorsoPos-response>) ostream)
  "Serializes a message object of type '<ArmTorsoPos-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmTorsoPos-response>) istream)
  "Deserializes a message object of type '<ArmTorsoPos-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmTorsoPos-response>)))
  "Returns string type for a service object of type '<ArmTorsoPos-response>"
  "tiago_controllers/ArmTorsoPosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmTorsoPos-response)))
  "Returns string type for a service object of type 'ArmTorsoPos-response"
  "tiago_controllers/ArmTorsoPosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmTorsoPos-response>)))
  "Returns md5sum for a message object of type '<ArmTorsoPos-response>"
  "3f0dca51556e205f687af18e1b29aeb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmTorsoPos-response)))
  "Returns md5sum for a message object of type 'ArmTorsoPos-response"
  "3f0dca51556e205f687af18e1b29aeb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmTorsoPos-response>)))
  "Returns full string definition for message of type '<ArmTorsoPos-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmTorsoPos-response)))
  "Returns full string definition for message of type 'ArmTorsoPos-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmTorsoPos-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmTorsoPos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmTorsoPos-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArmTorsoPos)))
  'ArmTorsoPos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArmTorsoPos)))
  'ArmTorsoPos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmTorsoPos)))
  "Returns string type for a service object of type '<ArmTorsoPos>"
  "tiago_controllers/ArmTorsoPos")