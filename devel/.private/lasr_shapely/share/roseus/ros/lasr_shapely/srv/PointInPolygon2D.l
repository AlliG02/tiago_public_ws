;; Auto-generated. Do not edit!


(when (boundp 'lasr_shapely::PointInPolygon2D)
  (if (not (find-package "LASR_SHAPELY"))
    (make-package "LASR_SHAPELY"))
  (shadow 'PointInPolygon2D (find-package "LASR_SHAPELY")))
(unless (find-package "LASR_SHAPELY::POINTINPOLYGON2D")
  (make-package "LASR_SHAPELY::POINTINPOLYGON2D"))
(unless (find-package "LASR_SHAPELY::POINTINPOLYGON2DREQUEST")
  (make-package "LASR_SHAPELY::POINTINPOLYGON2DREQUEST"))
(unless (find-package "LASR_SHAPELY::POINTINPOLYGON2DRESPONSE")
  (make-package "LASR_SHAPELY::POINTINPOLYGON2DRESPONSE"))

(in-package "ROS")





(defclass lasr_shapely::PointInPolygon2DRequest
  :super ros::object
  :slots (_polygon _x _y ))

(defmethod lasr_shapely::PointInPolygon2DRequest
  (:init
   (&key
    ((:polygon __polygon) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _polygon __polygon)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:polygon
   (&optional __polygon)
   (if __polygon (setq _polygon __polygon)) _polygon)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32[] _polygon
    (* 4    (length _polygon)) 4
    ;; float32 _x
    4
    ;; float32 _y
    4
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
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass lasr_shapely::PointInPolygon2DResponse
  :super ros::object
  :slots (_inside ))

(defmethod lasr_shapely::PointInPolygon2DResponse
  (:init
   (&key
    ((:inside __inside) nil)
    )
   (send-super :init)
   (setq _inside __inside)
   self)
  (:inside
   (&optional (__inside :null))
   (if (not (eq __inside :null)) (setq _inside __inside)) _inside)
  (:serialization-length
   ()
   (+
    ;; bool _inside
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _inside
       (if _inside (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _inside
     (setq _inside (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass lasr_shapely::PointInPolygon2D
  :super ros::object
  :slots ())

(setf (get lasr_shapely::PointInPolygon2D :md5sum-) "76bc48be6593836043514f12c05ab698")
(setf (get lasr_shapely::PointInPolygon2D :datatype-) "lasr_shapely/PointInPolygon2D")
(setf (get lasr_shapely::PointInPolygon2D :request) lasr_shapely::PointInPolygon2DRequest)
(setf (get lasr_shapely::PointInPolygon2D :response) lasr_shapely::PointInPolygon2DResponse)

(defmethod lasr_shapely::PointInPolygon2DRequest
  (:response () (instance lasr_shapely::PointInPolygon2DResponse :init)))

(setf (get lasr_shapely::PointInPolygon2DRequest :md5sum-) "76bc48be6593836043514f12c05ab698")
(setf (get lasr_shapely::PointInPolygon2DRequest :datatype-) "lasr_shapely/PointInPolygon2DRequest")
(setf (get lasr_shapely::PointInPolygon2DRequest :definition-)
      "# 1D-array of ordered pairs of points (connected by edge) that define the polygon
float32[] polygon
# X coordinate of point
float32 x
# Y coordinate of point
float32 y
---
# Whether the point is inside the polygon
bool inside

")

(setf (get lasr_shapely::PointInPolygon2DResponse :md5sum-) "76bc48be6593836043514f12c05ab698")
(setf (get lasr_shapely::PointInPolygon2DResponse :datatype-) "lasr_shapely/PointInPolygon2DResponse")
(setf (get lasr_shapely::PointInPolygon2DResponse :definition-)
      "# 1D-array of ordered pairs of points (connected by edge) that define the polygon
float32[] polygon
# X coordinate of point
float32 x
# Y coordinate of point
float32 y
---
# Whether the point is inside the polygon
bool inside

")



(provide :lasr_shapely/PointInPolygon2D "76bc48be6593836043514f12c05ab698")


