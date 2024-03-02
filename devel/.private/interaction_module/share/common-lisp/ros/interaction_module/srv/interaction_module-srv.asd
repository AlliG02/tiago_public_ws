
(cl:in-package :asdf)

(defsystem "interaction_module-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AudioAndTextInteraction" :depends-on ("_package_AudioAndTextInteraction"))
    (:file "_package_AudioAndTextInteraction" :depends-on ("_package"))
  ))