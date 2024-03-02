
(cl:in-package :asdf)

(defsystem "lasr_object_detection_yolo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :lasr_vision_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "YoloDetection" :depends-on ("_package_YoloDetection"))
    (:file "_package_YoloDetection" :depends-on ("_package"))
  ))