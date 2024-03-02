
(cl:in-package :asdf)

(defsystem "lasr_interaction_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SpeechInteraction" :depends-on ("_package_SpeechInteraction"))
    (:file "_package_SpeechInteraction" :depends-on ("_package"))
    (:file "TextInteraction" :depends-on ("_package_TextInteraction"))
    (:file "_package_TextInteraction" :depends-on ("_package"))
  ))