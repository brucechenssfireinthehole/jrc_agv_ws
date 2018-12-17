;; Auto-generated. Do not edit!


(when (boundp 'jrc_srvs::smooth)
  (if (not (find-package "JRC_SRVS"))
    (make-package "JRC_SRVS"))
  (shadow 'smooth (find-package "JRC_SRVS")))
(unless (find-package "JRC_SRVS::SMOOTH")
  (make-package "JRC_SRVS::SMOOTH"))
(unless (find-package "JRC_SRVS::SMOOTHREQUEST")
  (make-package "JRC_SRVS::SMOOTHREQUEST"))
(unless (find-package "JRC_SRVS::SMOOTHRESPONSE")
  (make-package "JRC_SRVS::SMOOTHRESPONSE"))

(in-package "ROS")





(defclass jrc_srvs::smoothRequest
  :super ros::object
  :slots (_x _y _theta _status ))

(defmethod jrc_srvs::smoothRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:status __status) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _status (float __status))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ;; float64 _status
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _status
       (sys::poke _status (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _status
     (setq _status (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass jrc_srvs::smoothResponse
  :super ros::object
  :slots (_mark ))

(defmethod jrc_srvs::smoothResponse
  (:init
   (&key
    ((:mark __mark) 0.0)
    )
   (send-super :init)
   (setq _mark (float __mark))
   self)
  (:mark
   (&optional __mark)
   (if __mark (setq _mark __mark)) _mark)
  (:serialization-length
   ()
   (+
    ;; float64 _mark
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _mark
       (sys::poke _mark (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _mark
     (setq _mark (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass jrc_srvs::smooth
  :super ros::object
  :slots ())

(setf (get jrc_srvs::smooth :md5sum-) "7f92d35d2c82d2a4c46ca92d3433aa56")
(setf (get jrc_srvs::smooth :datatype-) "jrc_srvs/smooth")
(setf (get jrc_srvs::smooth :request) jrc_srvs::smoothRequest)
(setf (get jrc_srvs::smooth :response) jrc_srvs::smoothResponse)

(defmethod jrc_srvs::smoothRequest
  (:response () (instance jrc_srvs::smoothResponse :init)))

(setf (get jrc_srvs::smoothRequest :md5sum-) "7f92d35d2c82d2a4c46ca92d3433aa56")
(setf (get jrc_srvs::smoothRequest :datatype-) "jrc_srvs/smoothRequest")
(setf (get jrc_srvs::smoothRequest :definition-)
      "float64 x
float64 y
float64 theta
float64 status
---
float64 mark

")

(setf (get jrc_srvs::smoothResponse :md5sum-) "7f92d35d2c82d2a4c46ca92d3433aa56")
(setf (get jrc_srvs::smoothResponse :datatype-) "jrc_srvs/smoothResponse")
(setf (get jrc_srvs::smoothResponse :definition-)
      "float64 x
float64 y
float64 theta
float64 status
---
float64 mark

")



(provide :jrc_srvs/smooth "7f92d35d2c82d2a4c46ca92d3433aa56")


