
(cl:in-package :asdf)

(defsystem "face_detection-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :face_detection-msg
               :lasr_vision_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "FaceDetection" :depends-on ("_package_FaceDetection"))
    (:file "_package_FaceDetection" :depends-on ("_package"))
    (:file "FaceDetectionPCL" :depends-on ("_package_FaceDetectionPCL"))
    (:file "_package_FaceDetectionPCL" :depends-on ("_package"))
  ))