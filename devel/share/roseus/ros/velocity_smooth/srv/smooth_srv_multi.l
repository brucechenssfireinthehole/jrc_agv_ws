;; Auto-generated. Do not edit!


(when (boundp 'velocity_smooth::smooth_srv_multi)
  (if (not (find-package "VELOCITY_SMOOTH"))
    (make-package "VELOCITY_SMOOTH"))
  (shadow 'smooth_srv_multi (find-package "VELOCITY_SMOOTH")))
(unless (find-package "VELOCITY_SMOOTH::SMOOTH_SRV_MULTI")
  (make-package "VELOCITY_SMOOTH::SMOOTH_SRV_MULTI"))
(unless (find-package "VELOCITY_SMOOTH::SMOOTH_SRV_MULTIREQUEST")
  (make-package "VELOCITY_SMOOTH::SMOOTH_SRV_MULTIREQUEST"))
(unless (find-package "VELOCITY_SMOOTH::SMOOTH_SRV_MULTIRESPONSE")
  (make-package "VELOCITY_SMOOTH::SMOOTH_SRV_MULTIRESPONSE"))

(in-package "ROS")





(defclass velocity_smooth::smooth_srv_multiRequest
  :super ros::object
  :slots (_x_multi _y_multi _theta_multi ))

(defmethod velocity_smooth::smooth_srv_multiRequest
  (:init
   (&key
    ((:x_multi __x_multi) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_multi __y_multi) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:theta_multi __theta_multi) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x_multi __x_multi)
   (setq _y_multi __y_multi)
   (setq _theta_multi __theta_multi)
   self)
  (:x_multi
   (&optional __x_multi)
   (if __x_multi (setq _x_multi __x_multi)) _x_multi)
  (:y_multi
   (&optional __y_multi)
   (if __y_multi (setq _y_multi __y_multi)) _y_multi)
  (:theta_multi
   (&optional __theta_multi)
   (if __theta_multi (setq _theta_multi __theta_multi)) _theta_multi)
  (:serialization-length
   ()
   (+
    ;; float64[] _x_multi
    (* 8    (length _x_multi)) 4
    ;; float64[] _y_multi
    (* 8    (length _y_multi)) 4
    ;; float64[] _theta_multi
    (* 8    (length _theta_multi)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _x_multi
     (write-long (length _x_multi) s)
     (dotimes (i (length _x_multi))
       (sys::poke (elt _x_multi i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y_multi
     (write-long (length _y_multi) s)
     (dotimes (i (length _y_multi))
       (sys::poke (elt _y_multi i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _theta_multi
     (write-long (length _theta_multi) s)
     (dotimes (i (length _theta_multi))
       (sys::poke (elt _theta_multi i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _x_multi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_multi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_multi i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y_multi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_multi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_multi i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _theta_multi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _theta_multi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _theta_multi i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass velocity_smooth::smooth_srv_multiResponse
  :super ros::object
  :slots (_mark_multi ))

(defmethod velocity_smooth::smooth_srv_multiResponse
  (:init
   (&key
    ((:mark_multi __mark_multi) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _mark_multi __mark_multi)
   self)
  (:mark_multi
   (&optional __mark_multi)
   (if __mark_multi (setq _mark_multi __mark_multi)) _mark_multi)
  (:serialization-length
   ()
   (+
    ;; float64[] _mark_multi
    (* 8    (length _mark_multi)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _mark_multi
     (write-long (length _mark_multi) s)
     (dotimes (i (length _mark_multi))
       (sys::poke (elt _mark_multi i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _mark_multi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mark_multi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mark_multi i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass velocity_smooth::smooth_srv_multi
  :super ros::object
  :slots ())

(setf (get velocity_smooth::smooth_srv_multi :md5sum-) "3b1e979c6d58d1f5eaa86cabfb1c7458")
(setf (get velocity_smooth::smooth_srv_multi :datatype-) "velocity_smooth/smooth_srv_multi")
(setf (get velocity_smooth::smooth_srv_multi :request) velocity_smooth::smooth_srv_multiRequest)
(setf (get velocity_smooth::smooth_srv_multi :response) velocity_smooth::smooth_srv_multiResponse)

(defmethod velocity_smooth::smooth_srv_multiRequest
  (:response () (instance velocity_smooth::smooth_srv_multiResponse :init)))

(setf (get velocity_smooth::smooth_srv_multiRequest :md5sum-) "3b1e979c6d58d1f5eaa86cabfb1c7458")
(setf (get velocity_smooth::smooth_srv_multiRequest :datatype-) "velocity_smooth/smooth_srv_multiRequest")
(setf (get velocity_smooth::smooth_srv_multiRequest :definition-)
      "float64[] x_multi
float64[] y_multi
float64[] theta_multi
---
float64[] mark_multi

")

(setf (get velocity_smooth::smooth_srv_multiResponse :md5sum-) "3b1e979c6d58d1f5eaa86cabfb1c7458")
(setf (get velocity_smooth::smooth_srv_multiResponse :datatype-) "velocity_smooth/smooth_srv_multiResponse")
(setf (get velocity_smooth::smooth_srv_multiResponse :definition-)
      "float64[] x_multi
float64[] y_multi
float64[] theta_multi
---
float64[] mark_multi

")



(provide :velocity_smooth/smooth_srv_multi "3b1e979c6d58d1f5eaa86cabfb1c7458")


