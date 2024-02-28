
(cl:in-package :asdf)

(defsystem "lasr_vision_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :lasr_vision_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "BodyPixDetection" :depends-on ("_package_BodyPixDetection"))
    (:file "_package_BodyPixDetection" :depends-on ("_package"))
    (:file "Recognise" :depends-on ("_package_Recognise"))
    (:file "_package_Recognise" :depends-on ("_package"))
    (:file "TorchFaceFeatureDetection" :depends-on ("_package_TorchFaceFeatureDetection"))
    (:file "_package_TorchFaceFeatureDetection" :depends-on ("_package"))
    (:file "YoloDetection" :depends-on ("_package_YoloDetection"))
    (:file "_package_YoloDetection" :depends-on ("_package"))
  ))