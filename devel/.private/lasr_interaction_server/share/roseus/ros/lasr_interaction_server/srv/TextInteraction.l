;; Auto-generated. Do not edit!


(when (boundp 'lasr_interaction_server::TextInteraction)
  (if (not (find-package "LASR_INTERACTION_SERVER"))
    (make-package "LASR_INTERACTION_SERVER"))
  (shadow 'TextInteraction (find-package "LASR_INTERACTION_SERVER")))
(unless (find-package "LASR_INTERACTION_SERVER::TEXTINTERACTION")
  (make-package "LASR_INTERACTION_SERVER::TEXTINTERACTION"))
(unless (find-package "LASR_INTERACTION_SERVER::TEXTINTERACTIONREQUEST")
  (make-package "LASR_INTERACTION_SERVER::TEXTINTERACTIONREQUEST"))
(unless (find-package "LASR_INTERACTION_SERVER::TEXTINTERACTIONRESPONSE")
  (make-package "LASR_INTERACTION_SERVER::TEXTINTERACTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lasr_interaction_server::TextInteractionRequest
  :super ros::object
  :slots (_task _action _query_text ))

(defmethod lasr_interaction_server::TextInteractionRequest
  (:init
   (&key
    ((:task __task) (instance std_msgs::String :init))
    ((:action __action) (instance std_msgs::String :init))
    ((:query_text __query_text) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _task __task)
   (setq _action __action)
   (setq _query_text __query_text)
   self)
  (:task
   (&rest __task)
   (if (keywordp (car __task))
       (send* _task __task)
     (progn
       (if __task (setq _task (car __task)))
       _task)))
  (:action
   (&rest __action)
   (if (keywordp (car __action))
       (send* _action __action)
     (progn
       (if __action (setq _action (car __action)))
       _action)))
  (:query_text
   (&rest __query_text)
   (if (keywordp (car __query_text))
       (send* _query_text __query_text)
     (progn
       (if __query_text (setq _query_text (car __query_text)))
       _query_text)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _task
    (send _task :serialization-length)
    ;; std_msgs/String _action
    (send _action :serialization-length)
    ;; std_msgs/String _query_text
    (send _query_text :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _task
       (send _task :serialize s)
     ;; std_msgs/String _action
       (send _action :serialize s)
     ;; std_msgs/String _query_text
       (send _query_text :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _task
     (send _task :deserialize buf ptr-) (incf ptr- (send _task :serialization-length))
   ;; std_msgs/String _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;; std_msgs/String _query_text
     (send _query_text :deserialize buf ptr-) (incf ptr- (send _query_text :serialization-length))
   ;;
   self)
  )

(defclass lasr_interaction_server::TextInteractionResponse
  :super ros::object
  :slots (_result _success ))

(defmethod lasr_interaction_server::TextInteractionResponse
  (:init
   (&key
    ((:result __result) (instance std_msgs::String :init))
    ((:success __success) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _result __result)
   (setq _success __success)
   self)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:success
   (&rest __success)
   (if (keywordp (car __success))
       (send* _success __success)
     (progn
       (if __success (setq _success (car __success)))
       _success)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _result
    (send _result :serialization-length)
    ;; std_msgs/Bool _success
    (send _success :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _result
       (send _result :serialize s)
     ;; std_msgs/Bool _success
       (send _success :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;; std_msgs/Bool _success
     (send _success :deserialize buf ptr-) (incf ptr- (send _success :serialization-length))
   ;;
   self)
  )

(defclass lasr_interaction_server::TextInteraction
  :super ros::object
  :slots ())

(setf (get lasr_interaction_server::TextInteraction :md5sum-) "b626d0b32e2760daee50a75d7d83566b")
(setf (get lasr_interaction_server::TextInteraction :datatype-) "lasr_interaction_server/TextInteraction")
(setf (get lasr_interaction_server::TextInteraction :request) lasr_interaction_server::TextInteractionRequest)
(setf (get lasr_interaction_server::TextInteraction :response) lasr_interaction_server::TextInteractionResponse)

(defmethod lasr_interaction_server::TextInteractionRequest
  (:response () (instance lasr_interaction_server::TextInteractionResponse :init)))

(setf (get lasr_interaction_server::TextInteractionRequest :md5sum-) "b626d0b32e2760daee50a75d7d83566b")
(setf (get lasr_interaction_server::TextInteractionRequest :datatype-) "lasr_interaction_server/TextInteractionRequest")
(setf (get lasr_interaction_server::TextInteractionRequest :definition-)
      "std_msgs/String task
std_msgs/String action
std_msgs/String query_text

================================================================================
MSG: std_msgs/String
string data
---
std_msgs/String result
std_msgs/Bool success

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Bool
")

(setf (get lasr_interaction_server::TextInteractionResponse :md5sum-) "b626d0b32e2760daee50a75d7d83566b")
(setf (get lasr_interaction_server::TextInteractionResponse :datatype-) "lasr_interaction_server/TextInteractionResponse")
(setf (get lasr_interaction_server::TextInteractionResponse :definition-)
      "std_msgs/String task
std_msgs/String action
std_msgs/String query_text

================================================================================
MSG: std_msgs/String
string data
---
std_msgs/String result
std_msgs/Bool success

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Bool
")



(provide :lasr_interaction_server/TextInteraction "b626d0b32e2760daee50a75d7d83566b")


