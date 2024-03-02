
(cl:in-package :asdf)

(defsystem "listen_module-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DialogListen" :depends-on ("_package_DialogListen"))
    (:file "_package_DialogListen" :depends-on ("_package"))
  ))