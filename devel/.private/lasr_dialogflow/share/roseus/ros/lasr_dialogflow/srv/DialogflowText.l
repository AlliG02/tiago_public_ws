;; Auto-generated. Do not edit!


(when (boundp 'lasr_dialogflow::DialogflowText)
  (if (not (find-package "LASR_DIALOGFLOW"))
    (make-package "LASR_DIALOGFLOW"))
  (shadow 'DialogflowText (find-package "LASR_DIALOGFLOW")))
(unless (find-package "LASR_DIALOGFLOW::DIALOGFLOWTEXT")
  (make-package "LASR_DIALOGFLOW::DIALOGFLOWTEXT"))
(unless (find-package "LASR_DIALOGFLOW::DIALOGFLOWTEXTREQUEST")
  (make-package "LASR_DIALOGFLOW::DIALOGFLOWTEXTREQUEST"))
(unless (find-package "LASR_DIALOGFLOW::DIALOGFLOWTEXTRESPONSE")
  (make-package "LASR_DIALOGFLOW::DIALOGFLOWTEXTRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lasr_dialogflow::DialogflowTextRequest
  :super ros::object
  :slots (_task _action _query_text ))

(defmethod lasr_dialogflow::DialogflowTextRequest
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

(defclass lasr_dialogflow::DialogflowTextResponse
  :super ros::object
  :slots (_result _success ))

(defmethod lasr_dialogflow::DialogflowTextResponse
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

(defclass lasr_dialogflow::DialogflowText
  :super ros::object
  :slots ())

(setf (get lasr_dialogflow::DialogflowText :md5sum-) "b626d0b32e2760daee50a75d7d83566b")
(setf (get lasr_dialogflow::DialogflowText :datatype-) "lasr_dialogflow/DialogflowText")
(setf (get lasr_dialogflow::DialogflowText :request) lasr_dialogflow::DialogflowTextRequest)
(setf (get lasr_dialogflow::DialogflowText :response) lasr_dialogflow::DialogflowTextResponse)

(defmethod lasr_dialogflow::DialogflowTextRequest
  (:response () (instance lasr_dialogflow::DialogflowTextResponse :init)))

(setf (get lasr_dialogflow::DialogflowTextRequest :md5sum-) "b626d0b32e2760daee50a75d7d83566b")
(setf (get lasr_dialogflow::DialogflowTextRequest :datatype-) "lasr_dialogflow/DialogflowTextRequest")
(setf (get lasr_dialogflow::DialogflowTextRequest :definition-)
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

(setf (get lasr_dialogflow::DialogflowTextResponse :md5sum-) "b626d0b32e2760daee50a75d7d83566b")
(setf (get lasr_dialogflow::DialogflowTextResponse :datatype-) "lasr_dialogflow/DialogflowTextResponse")
(setf (get lasr_dialogflow::DialogflowTextResponse :definition-)
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



(provide :lasr_dialogflow/DialogflowText "b626d0b32e2760daee50a75d7d83566b")


