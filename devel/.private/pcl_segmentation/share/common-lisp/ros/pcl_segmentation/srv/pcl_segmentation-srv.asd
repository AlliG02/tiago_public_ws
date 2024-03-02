
(cl:in-package :asdf)

(defsystem "pcl_segmentation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Centroid" :depends-on ("_package_Centroid"))
    (:file "_package_Centroid" :depends-on ("_package"))
    (:file "MaskFromCuboid" :depends-on ("_package_MaskFromCuboid"))
    (:file "_package_MaskFromCuboid" :depends-on ("_package"))
    (:file "SegmentBB" :depends-on ("_package_SegmentBB"))
    (:file "_package_SegmentBB" :depends-on ("_package"))
    (:file "SegmentCuboid" :depends-on ("_package_SegmentCuboid"))
    (:file "_package_SegmentCuboid" :depends-on ("_package"))
  ))