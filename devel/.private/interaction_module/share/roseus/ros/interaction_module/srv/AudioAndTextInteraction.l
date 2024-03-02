;; Auto-generated. Do not edit!


(when (boundp 'interaction_module::AudioAndTextInteraction)
  (if (not (find-package "INTERACTION_MODULE"))
    (make-package "INTERACTION_MODULE"))
  (shadow 'AudioAndTextInteraction (find-package "INTERACTION_MODULE")))
(unless (find-package "INTERACTION_MODULE::AUDIOANDTEXTINTERACTION")
  (make-package "INTERACTION_MODULE::AUDIOANDTEXTINTERACTION"))
(unless (find-package "INTERACTION_MODULE::AUDIOANDTEXTINTERACTIONREQUEST")
  (make-package "INTERACTION_MODULE::AUDIOANDTEXTINTERACTIONREQUEST"))
(unless (find-package "INTERACTION_MODULE::AUDIOANDTEXTINTERACTIONRESPONSE")
  (make-package "INTERACTION_MODULE::AUDIOANDTEXTINTERACTIONRESPONSE"))

(in-package "ROS")





(defclass interaction_module::AudioAndTextInteractionRequest
  :super ros::object
  :slots (_action _subaction _query_text ))

(defmethod interaction_module::AudioAndTextInteractionRequest
  (:init
   (&key
    ((:action __action) "")
    ((:subaction __subaction) "")
    ((:query_text __query_text) "")
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _subaction (string __subaction))
   (setq _query_text (string __query_text))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:subaction
   (&optional __subaction)
   (if __subaction (setq _subaction __subaction)) _subaction)
  (:query_text
   (&optional __query_text)
   (if __query_text (setq _query_text __query_text)) _query_text)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; string _subaction
    4 (length _subaction)
    ;; string _query_text
    4 (length _query_text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string _subaction
       (write-long (length _subaction) s) (princ _subaction s)
     ;; string _query_text
       (write-long (length _query_text) s) (princ _query_text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _subaction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subaction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _query_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass interaction_module::AudioAndTextInteractionResponse
  :super ros::object
  :slots (_status _result ))

(defmethod interaction_module::AudioAndTextInteractionResponse
  (:init
   (&key
    ((:status __status) nil)
    ((:result __result) "")
    )
   (send-super :init)
   (setq _status __status)
   (setq _result (string __result))
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass interaction_module::AudioAndTextInteraction
  :super ros::object
  :slots ())

(setf (get interaction_module::AudioAndTextInteraction :md5sum-) "56cb91b1044347ee934e8b6c5a253efa")
(setf (get interaction_module::AudioAndTextInteraction :datatype-) "interaction_module/AudioAndTextInteraction")
(setf (get interaction_module::AudioAndTextInteraction :request) interaction_module::AudioAndTextInteractionRequest)
(setf (get interaction_module::AudioAndTextInteraction :response) interaction_module::AudioAndTextInteractionResponse)

(defmethod interaction_module::AudioAndTextInteractionRequest
  (:response () (instance interaction_module::AudioAndTextInteractionResponse :init)))

(setf (get interaction_module::AudioAndTextInteractionRequest :md5sum-) "56cb91b1044347ee934e8b6c5a253efa")
(setf (get interaction_module::AudioAndTextInteractionRequest :datatype-) "interaction_module/AudioAndTextInteractionRequest")
(setf (get interaction_module::AudioAndTextInteractionRequest :definition-)
      "string action
string subaction
string query_text
---
bool status
string result


")

(setf (get interaction_module::AudioAndTextInteractionResponse :md5sum-) "56cb91b1044347ee934e8b6c5a253efa")
(setf (get interaction_module::AudioAndTextInteractionResponse :datatype-) "interaction_module/AudioAndTextInteractionResponse")
(setf (get interaction_module::AudioAndTextInteractionResponse :definition-)
      "string action
string subaction
string query_text
---
bool status
string result


")



(provide :interaction_module/AudioAndTextInteraction "56cb91b1044347ee934e8b6c5a253efa")


