
(cl:in-package :asdf)

(defsystem "aruco_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GenerateTableCuboid" :depends-on ("_package_GenerateTableCuboid"))
    (:file "_package_GenerateTableCuboid" :depends-on ("_package"))
    (:file "PublishTablePoints" :depends-on ("_package_PublishTablePoints"))
    (:file "_package_PublishTablePoints" :depends-on ("_package"))
    (:file "SaveNavigationPoint" :depends-on ("_package_SaveNavigationPoint"))
    (:file "_package_SaveNavigationPoint" :depends-on ("_package"))
  ))