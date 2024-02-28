; Auto-generated. Do not edit!


(cl:in-package lasr_vision_msgs-msg)


;//! \htmlinclude BodyPixPose.msg.html

(cl:defclass <BodyPixPose> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BodyPixPose (<BodyPixPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyPixPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyPixPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lasr_vision_msgs-msg:<BodyPixPose> is deprecated: use lasr_vision_msgs-msg:BodyPixPose instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyPixPose>) ostream)
  "Serializes a message object of type '<BodyPixPose>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyPixPose>) istream)
  "Deserializes a message object of type '<BodyPixPose>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyPixPose>)))
  "Returns string type for a message object of type '<BodyPixPose>"
  "lasr_vision_msgs/BodyPixPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyPixPose)))
  "Returns string type for a message object of type 'BodyPixPose"
  "lasr_vision_msgs/BodyPixPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyPixPose>)))
  "Returns md5sum for a message object of type '<BodyPixPose>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyPixPose)))
  "Returns md5sum for a message object of type 'BodyPixPose"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyPixPose>)))
  "Returns full string definition for message of type '<BodyPixPose>"
  (cl:format cl:nil "# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/types.py~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyPixPose)))
  "Returns full string definition for message of type 'BodyPixPose"
  (cl:format cl:nil "# https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/types.py~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyPixPose>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyPixPose>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyPixPose
))
