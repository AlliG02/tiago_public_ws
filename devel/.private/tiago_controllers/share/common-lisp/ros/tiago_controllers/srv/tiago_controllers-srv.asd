
(cl:in-package :asdf)

(defsystem "tiago_controllers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ArmTorsoPos" :depends-on ("_package_ArmTorsoPos"))
    (:file "_package_ArmTorsoPos" :depends-on ("_package"))
  ))