
(cl:in-package :asdf)

(defsystem "lasr_shapely-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PointInPolygon2D" :depends-on ("_package_PointInPolygon2D"))
    (:file "_package_PointInPolygon2D" :depends-on ("_package"))
    (:file "PointsInPolygon2D" :depends-on ("_package_PointsInPolygon2D"))
    (:file "_package_PointsInPolygon2D" :depends-on ("_package"))
  ))