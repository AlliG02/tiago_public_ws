;; Auto-generated. Do not edit!


(when (boundp 'tiago_controllers::ArmTorsoPos)
  (if (not (find-package "TIAGO_CONTROLLERS"))
    (make-package "TIAGO_CONTROLLERS"))
  (shadow 'ArmTorsoPos (find-package "TIAGO_CONTROLLERS")))
(unless (find-package "TIAGO_CONTROLLERS::ARMTORSOPOS")
  (make-package "TIAGO_CONTROLLERS::ARMTORSOPOS"))
(unless (find-package "TIAGO_CONTROLLERS::ARMTORSOPOSREQUEST")
  (make-package "TIAGO_CONTROLLERS::ARMTORSOPOSREQUEST"))
(unless (find-package "TIAGO_CONTROLLERS::ARMTORSOPOSRESPONSE")
  (make-package "TIAGO_CONTROLLERS::ARMTORSOPOSRESPONSE"))

(in-package "ROS")





(defclass tiago_controllers::ArmTorsoPosRequest
  :super ros::object
  :slots (_torso_goals _arm_goals _plan ))

(defmethod tiago_controllers::ArmTorsoPosRequest
  (:init
   (&key
    ((:torso_goals __torso_goals) 0.0)
    ((:arm_goals __arm_goals) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:plan __plan) nil)
    )
   (send-super :init)
   (setq _torso_goals (float __torso_goals))
   (setq _arm_goals __arm_goals)
   (setq _plan __plan)
   self)
  (:torso_goals
   (&optional __torso_goals)
   (if __torso_goals (setq _torso_goals __torso_goals)) _torso_goals)
  (:arm_goals
   (&optional __arm_goals)
   (if __arm_goals (setq _arm_goals __arm_goals)) _arm_goals)
  (:plan
   (&optional (__plan :null))
   (if (not (eq __plan :null)) (setq _plan __plan)) _plan)
  (:serialization-length
   ()
   (+
    ;; float32 _torso_goals
    4
    ;; float32[] _arm_goals
    (* 4    (length _arm_goals)) 4
    ;; bool _plan
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _torso_goals
       (sys::poke _torso_goals (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _arm_goals
     (write-long (length _arm_goals) s)
     (dotimes (i (length _arm_goals))
       (sys::poke (elt _arm_goals i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _plan
       (if _plan (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _torso_goals
     (setq _torso_goals (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _arm_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arm_goals (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _arm_goals i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _plan
     (setq _plan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tiago_controllers::ArmTorsoPosResponse
  :super ros::object
  :slots (_result ))

(defmethod tiago_controllers::ArmTorsoPosResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tiago_controllers::ArmTorsoPos
  :super ros::object
  :slots ())

(setf (get tiago_controllers::ArmTorsoPos :md5sum-) "3f0dca51556e205f687af18e1b29aeb3")
(setf (get tiago_controllers::ArmTorsoPos :datatype-) "tiago_controllers/ArmTorsoPos")
(setf (get tiago_controllers::ArmTorsoPos :request) tiago_controllers::ArmTorsoPosRequest)
(setf (get tiago_controllers::ArmTorsoPos :response) tiago_controllers::ArmTorsoPosResponse)

(defmethod tiago_controllers::ArmTorsoPosRequest
  (:response () (instance tiago_controllers::ArmTorsoPosResponse :init)))

(setf (get tiago_controllers::ArmTorsoPosRequest :md5sum-) "3f0dca51556e205f687af18e1b29aeb3")
(setf (get tiago_controllers::ArmTorsoPosRequest :datatype-) "tiago_controllers/ArmTorsoPosRequest")
(setf (get tiago_controllers::ArmTorsoPosRequest :definition-)
      "float32 torso_goals
float32[] arm_goals
bool plan
---
bool result
")

(setf (get tiago_controllers::ArmTorsoPosResponse :md5sum-) "3f0dca51556e205f687af18e1b29aeb3")
(setf (get tiago_controllers::ArmTorsoPosResponse :datatype-) "tiago_controllers/ArmTorsoPosResponse")
(setf (get tiago_controllers::ArmTorsoPosResponse :definition-)
      "float32 torso_goals
float32[] arm_goals
bool plan
---
bool result
")



(provide :tiago_controllers/ArmTorsoPos "3f0dca51556e205f687af18e1b29aeb3")


