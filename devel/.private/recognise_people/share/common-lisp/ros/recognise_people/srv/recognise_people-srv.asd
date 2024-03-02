
(cl:in-package :asdf)

(defsystem "recognise_people-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :lasr_vision_msgs-msg
)
  :components ((:file "_package")
    (:file "RecognisePeople" :depends-on ("_package_RecognisePeople"))
    (:file "_package_RecognisePeople" :depends-on ("_package"))
  ))