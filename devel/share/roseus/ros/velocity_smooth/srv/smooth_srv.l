;; Auto-generated. Do not edit!


(when (boundp 'velocity_smooth::smooth_srv)
  (if (not (find-package "VELOCITY_SMOOTH"))
    (make-package "VELOCITY_SMOOTH"))
  (shadow 'smooth_srv (find-package "VELOCITY_SMOOTH")))
(unless (find-package "VELOCITY_SMOOTH::SMOOTH_SRV")
  (make-package "VELOCITY_SMOOTH::SMOOTH_SRV"))
(unless (find-package "VELOCITY_SMOOTH::SMOOTH_SRVREQUEST")
  (make-package "VELOCITY_SMOOTH::SMOOTH_SRVREQUEST"))
(unless (find-package "VELOCITY_SMOOTH::SMOOTH_SRVRESPONSE")
  (make-package "VELOCITY_SMOOTH::SMOOTH_SRVRESPONSE"))

(in-package "ROS")





(defclass velocity_smooth::smooth_srvRequest
  :super ros::object
  :slots (_x _y _theta _status ))

(defmethod velocity_smooth::smooth_srvRequest
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

(defclass velocity_smooth::smooth_srvResponse
  :super ros::object
  :slots (_mark ))

(defmethod velocity_smooth::smooth_srvResponse
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

(defclass velocity_smooth::smooth_srv
  :super ros::object
  :slots ())

(setf (get velocity_smooth::smooth_srv :md5sum-) "7f92d35d2c82d2a4c46ca92d3433aa56")
(setf (get velocity_smooth::smooth_srv :datatype-) "velocity_smooth/smooth_srv")
(setf (get velocity_smooth::smooth_srv :request) velocity_smooth::smooth_srvRequest)
(setf (get velocity_smooth::smooth_srv :response) velocity_smooth::smooth_srvResponse)

(defmethod velocity_smooth::smooth_srvRequest
  (:response () (instance velocity_smooth::smooth_srvResponse :init)))

(setf (get velocity_smooth::smooth_srvRequest :md5sum-) "7f92d35d2c82d2a4c46ca92d3433aa56")
(setf (get velocity_smooth::smooth_srvRequest :datatype-) "velocity_smooth/smooth_srvRequest")
(setf (get velocity_smooth::smooth_srvRequest :definition-)
      "float64 x
float64 y
float64 theta
float64 status
---
float64 mark

")

(setf (get velocity_smooth::smooth_srvResponse :md5sum-) "7f92d35d2c82d2a4c46ca92d3433aa56")
(setf (get velocity_smooth::smooth_srvResponse :datatype-) "velocity_smooth/smooth_srvResponse")
(setf (get velocity_smooth::smooth_srvResponse :definition-)
      "float64 x
float64 y
float64 theta
float64 status
---
float64 mark

")



(provide :velocity_smooth/smooth_srv "7f92d35d2c82d2a4c46ca92d3433aa56")


