
(cl:in-package :asdf)

(defsystem "object_interest_tracking-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Tdr" :depends-on ("_package_Tdr"))
    (:file "_package_Tdr" :depends-on ("_package"))
  ))