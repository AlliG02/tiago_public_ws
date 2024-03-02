
(cl:in-package :asdf)

(defsystem "common_math-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TfTransform" :depends-on ("_package_TfTransform"))
    (:file "_package_TfTransform" :depends-on ("_package"))
  ))