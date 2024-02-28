
(cl:in-package :asdf)

(defsystem "lasr_vision_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BodyPixMask" :depends-on ("_package_BodyPixMask"))
    (:file "_package_BodyPixMask" :depends-on ("_package"))
    (:file "BodyPixMaskRequest" :depends-on ("_package_BodyPixMaskRequest"))
    (:file "_package_BodyPixMaskRequest" :depends-on ("_package"))
    (:file "BodyPixPose" :depends-on ("_package_BodyPixPose"))
    (:file "_package_BodyPixPose" :depends-on ("_package"))
    (:file "ColourPrediction" :depends-on ("_package_ColourPrediction"))
    (:file "_package_ColourPrediction" :depends-on ("_package"))
    (:file "Detection" :depends-on ("_package_Detection"))
    (:file "_package_Detection" :depends-on ("_package"))
    (:file "FeatureWithColour" :depends-on ("_package_FeatureWithColour"))
    (:file "_package_FeatureWithColour" :depends-on ("_package"))
  ))