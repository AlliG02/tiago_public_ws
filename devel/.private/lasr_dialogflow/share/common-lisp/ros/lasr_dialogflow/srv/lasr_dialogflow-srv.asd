
(cl:in-package :asdf)

(defsystem "lasr_dialogflow-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DialogflowAudio" :depends-on ("_package_DialogflowAudio"))
    (:file "_package_DialogflowAudio" :depends-on ("_package"))
    (:file "DialogflowText" :depends-on ("_package_DialogflowText"))
    (:file "_package_DialogflowText" :depends-on ("_package"))
  ))