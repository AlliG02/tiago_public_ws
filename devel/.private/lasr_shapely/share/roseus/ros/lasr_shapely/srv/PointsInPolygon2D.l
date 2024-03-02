;; Auto-generated. Do not edit!


(when (boundp 'lasr_shapely::PointsInPolygon2D)
  (if (not (find-package "LASR_SHAPELY"))
    (make-package "LASR_SHAPELY"))
  (shadow 'PointsInPolygon2D (find-package "LASR_SHAPELY")))
(unless (find-package "LASR_SHAPELY::POINTSINPOLYGON2D")
  (make-package "LASR_SHAPELY::POINTSINPOLYGON2D"))
(unless (find-package "LASR_SHAPELY::POINTSINPOLYGON2DREQUEST")
  (make-package "LASR_SHAPELY::POINTSINPOLYGON2DREQUEST"))
(unless (find-package "LASR_SHAPELY::POINTSINPOLYGON2DRESPONSE")
  (make-package "LASR_SHAPELY::POINTSINPOLYGON2DRESPONSE"))

(in-package "ROS")





(defclass lasr_shapely::PointsInPolygon2DRequest
  :super ros::object
  :slots (_polygon _points ))

(defmethod lasr_shapely::PointsInPolygon2DRequest
  (:init
   (&key
    ((:polygon __polygon) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points __points) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _polygon __polygon)
   (setq _points __points)
   self)
  (:polygon
   (&optional __polygon)
   (if __polygon (setq _polygon __polygon)) _polygon)
  (:points
   (&optional __points)
   (if __points (setq _points __points)) _points)
  (:serialization-length
   ()
   (+
    ;; float32[] _polygon
    (* 4    (length _polygon)) 4
    ;; float32[] _points
    (* 4    (length _points)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _polygon
     (write-long (length _polygon) s)
     (dotimes (i (length _polygon))
       (sys::poke (elt _polygon i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _points
     (write-long (length _points) s)
     (dotimes (i (length _points))
       (sys::poke (elt _points i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _polygon i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass lasr_shapely::PointsInPolygon2DResponse
  :super ros::object
  :slots (_inside ))

(defmethod lasr_shapely::PointsInPolygon2DResponse
  (:init
   (&key
    ((:inside __inside) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _inside __inside)
   self)
  (:inside
   (&optional __inside)
   (if __inside (setq _inside __inside)) _inside)
  (:serialization-length
   ()
   (+
    ;; bool[] _inside
    (* 1    (length _inside)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _inside
     (write-long (length _inside) s)
     (dotimes (i (length _inside))
       (if (elt _inside i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _inside
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inside (make-list n))
     (dotimes (i n)
     (setf (elt _inside i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(defclass lasr_shapely::PointsInPolygon2D
  :super ros::object
  :slots ())

(setf (get lasr_shapely::PointsInPolygon2D :md5sum-) "839dd681ef3f1c414d3202b24dd84813")
(setf (get lasr_shapely::PointsInPolygon2D :datatype-) "lasr_shapely/PointsInPolygon2D")
(setf (get lasr_shapely::PointsInPolygon2D :request) lasr_shapely::PointsInPolygon2DRequest)
(setf (get lasr_shapely::PointsInPolygon2D :response) lasr_shapely::PointsInPolygon2DResponse)

(defmethod lasr_shapely::PointsInPolygon2DRequest
  (:response () (instance lasr_shapely::PointsInPolygon2DResponse :init)))

(setf (get lasr_shapely::PointsInPolygon2DRequest :md5sum-) "839dd681ef3f1c414d3202b24dd84813")
(setf (get lasr_shapely::PointsInPolygon2DRequest :datatype-) "lasr_shapely/PointsInPolygon2DRequest")
(setf (get lasr_shapely::PointsInPolygon2DRequest :definition-)
      "# 1D-array of ordered pairs of points (connected by edge) that define the polygon
float32[] polygon
# 1D-array of pairs of points
float32[] points
---
# Whether the points are inside the polygon
bool[] inside

")

(setf (get lasr_shapely::PointsInPolygon2DResponse :md5sum-) "839dd681ef3f1c414d3202b24dd84813")
(setf (get lasr_shapely::PointsInPolygon2DResponse :datatype-) "lasr_shapely/PointsInPolygon2DResponse")
(setf (get lasr_shapely::PointsInPolygon2DResponse :definition-)
      "# 1D-array of ordered pairs of points (connected by edge) that define the polygon
float32[] polygon
# 1D-array of pairs of points
float32[] points
---
# Whether the points are inside the polygon
bool[] inside

")



(provide :lasr_shapely/PointsInPolygon2D "839dd681ef3f1c414d3202b24dd84813")


