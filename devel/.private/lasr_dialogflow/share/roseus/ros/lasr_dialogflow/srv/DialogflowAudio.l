;; Auto-generated. Do not edit!


(when (boundp 'lasr_dialogflow::DialogflowAudio)
  (if (not (find-package "LASR_DIALOGFLOW"))
    (make-package "LASR_DIALOGFLOW"))
  (shadow 'DialogflowAudio (find-package "LASR_DIALOGFLOW")))
(unless (find-package "LASR_DIALOGFLOW::DIALOGFLOWAUDIO")
  (make-package "LASR_DIALOGFLOW::DIALOGFLOWAUDIO"))
(unless (find-package "LASR_DIALOGFLOW::DIALOGFLOWAUDIOREQUEST")
  (make-package "LASR_DIALOGFLOW::DIALOGFLOWAUDIOREQUEST"))
(unless (find-package "LASR_DIALOGFLOW::DIALOGFLOWAUDIORESPONSE")
  (make-package "LASR_DIALOGFLOW::DIALOGFLOWAUDIORESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lasr_dialogflow::DialogflowAudioRequest
  :super ros::object
  :slots (_task _action ))

(defmethod lasr_dialogflow::DialogflowAudioRequest
  (:init
   (&key
    ((:task __task) (instance std_msgs::String :init))
    ((:action __action) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _task __task)
   (setq _action __action)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _task
    (send _task :serialization-length)
    ;; std_msgs/String _action
    (send _action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _task
       (send _task :serialize s)
     ;; std_msgs/String _action
       (send _action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _task
     (send _task :deserialize buf ptr-) (incf ptr- (send _task :serialization-length))
   ;; std_msgs/String _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;;
   self)
  )

(defclass lasr_dialogflow::DialogflowAudioResponse
  :super ros::object
  :slots (_result _success ))

(defmethod lasr_dialogflow::DialogflowAudioResponse
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

(defclass lasr_dialogflow::DialogflowAudio
  :super ros::object
  :slots ())

(setf (get lasr_dialogflow::DialogflowAudio :md5sum-) "c6778e75ee863a7048845ef167f478f5")
(setf (get lasr_dialogflow::DialogflowAudio :datatype-) "lasr_dialogflow/DialogflowAudio")
(setf (get lasr_dialogflow::DialogflowAudio :request) lasr_dialogflow::DialogflowAudioRequest)
(setf (get lasr_dialogflow::DialogflowAudio :response) lasr_dialogflow::DialogflowAudioResponse)

(defmethod lasr_dialogflow::DialogflowAudioRequest
  (:response () (instance lasr_dialogflow::DialogflowAudioResponse :init)))

(setf (get lasr_dialogflow::DialogflowAudioRequest :md5sum-) "c6778e75ee863a7048845ef167f478f5")
(setf (get lasr_dialogflow::DialogflowAudioRequest :datatype-) "lasr_dialogflow/DialogflowAudioRequest")
(setf (get lasr_dialogflow::DialogflowAudioRequest :definition-)
      "std_msgs/String task
std_msgs/String action

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

(setf (get lasr_dialogflow::DialogflowAudioResponse :md5sum-) "c6778e75ee863a7048845ef167f478f5")
(setf (get lasr_dialogflow::DialogflowAudioResponse :datatype-) "lasr_dialogflow/DialogflowAudioResponse")
(setf (get lasr_dialogflow::DialogflowAudioResponse :definition-)
      "std_msgs/String task
std_msgs/String action

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



(provide :lasr_dialogflow/DialogflowAudio "c6778e75ee863a7048845ef167f478f5")


