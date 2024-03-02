;; Auto-generated. Do not edit!


(when (boundp 'listen_module::DialogListen)
  (if (not (find-package "LISTEN_MODULE"))
    (make-package "LISTEN_MODULE"))
  (shadow 'DialogListen (find-package "LISTEN_MODULE")))
(unless (find-package "LISTEN_MODULE::DIALOGLISTEN")
  (make-package "LISTEN_MODULE::DIALOGLISTEN"))
(unless (find-package "LISTEN_MODULE::DIALOGLISTENREQUEST")
  (make-package "LISTEN_MODULE::DIALOGLISTENREQUEST"))
(unless (find-package "LISTEN_MODULE::DIALOGLISTENRESPONSE")
  (make-package "LISTEN_MODULE::DIALOGLISTENRESPONSE"))

(in-package "ROS")





(defclass listen_module::DialogListenRequest
  :super ros::object
  :slots (_action _subaction _query_text ))

(defmethod listen_module::DialogListenRequest
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

(defclass listen_module::DialogListenResponse
  :super ros::object
  :slots (_status _result ))

(defmethod listen_module::DialogListenResponse
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

(defclass listen_module::DialogListen
  :super ros::object
  :slots ())

(setf (get listen_module::DialogListen :md5sum-) "56cb91b1044347ee934e8b6c5a253efa")
(setf (get listen_module::DialogListen :datatype-) "listen_module/DialogListen")
(setf (get listen_module::DialogListen :request) listen_module::DialogListenRequest)
(setf (get listen_module::DialogListen :response) listen_module::DialogListenResponse)

(defmethod listen_module::DialogListenRequest
  (:response () (instance listen_module::DialogListenResponse :init)))

(setf (get listen_module::DialogListenRequest :md5sum-) "56cb91b1044347ee934e8b6c5a253efa")
(setf (get listen_module::DialogListenRequest :datatype-) "listen_module/DialogListenRequest")
(setf (get listen_module::DialogListenRequest :definition-)
      "string action
string subaction
string query_text
---
bool status
string result


")

(setf (get listen_module::DialogListenResponse :md5sum-) "56cb91b1044347ee934e8b6c5a253efa")
(setf (get listen_module::DialogListenResponse :datatype-) "listen_module/DialogListenResponse")
(setf (get listen_module::DialogListenResponse :definition-)
      "string action
string subaction
string query_text
---
bool status
string result


")



(provide :listen_module/DialogListen "56cb91b1044347ee934e8b6c5a253efa")


