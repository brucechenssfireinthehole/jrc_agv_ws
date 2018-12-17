;; Auto-generated. Do not edit!


(when (boundp 'jrc_srvs::smooth_multi)
  (if (not (find-package "JRC_SRVS"))
    (make-package "JRC_SRVS"))
  (shadow 'smooth_multi (find-package "JRC_SRVS")))
(unless (find-package "JRC_SRVS::SMOOTH_MULTI")
  (make-package "JRC_SRVS::SMOOTH_MULTI"))
(unless (find-package "JRC_SRVS::SMOOTH_MULTIREQUEST")
  (make-package "JRC_SRVS::SMOOTH_MULTIREQUEST"))
(unless (find-package "JRC_SRVS::SMOOTH_MULTIRESPONSE")
  (make-package "JRC_SRVS::SMOOTH_MULTIRESPONSE"))

(in-package "ROS")





(defclass jrc_srvs::smooth_multiRequest
  :super ros::object
  :slots (_x_multi _y_multi _theta_multi ))

(defmethod jrc_srvs::smooth_multiRequest
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

(defclass jrc_srvs::smooth_multiResponse
  :super ros::object
  :slots (_mark_multi ))

(defmethod jrc_srvs::smooth_multiResponse
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

(defclass jrc_srvs::smooth_multi
  :super ros::object
  :slots ())

(setf (get jrc_srvs::smooth_multi :md5sum-) "3b1e979c6d58d1f5eaa86cabfb1c7458")
(setf (get jrc_srvs::smooth_multi :datatype-) "jrc_srvs/smooth_multi")
(setf (get jrc_srvs::smooth_multi :request) jrc_srvs::smooth_multiRequest)
(setf (get jrc_srvs::smooth_multi :response) jrc_srvs::smooth_multiResponse)

(defmethod jrc_srvs::smooth_multiRequest
  (:response () (instance jrc_srvs::smooth_multiResponse :init)))

(setf (get jrc_srvs::smooth_multiRequest :md5sum-) "3b1e979c6d58d1f5eaa86cabfb1c7458")
(setf (get jrc_srvs::smooth_multiRequest :datatype-) "jrc_srvs/smooth_multiRequest")
(setf (get jrc_srvs::smooth_multiRequest :definition-)
      "float64[] x_multi
float64[] y_multi
float64[] theta_multi
---
float64[] mark_multi

")

(setf (get jrc_srvs::smooth_multiResponse :md5sum-) "3b1e979c6d58d1f5eaa86cabfb1c7458")
(setf (get jrc_srvs::smooth_multiResponse :datatype-) "jrc_srvs/smooth_multiResponse")
(setf (get jrc_srvs::smooth_multiResponse :definition-)
      "float64[] x_multi
float64[] y_multi
float64[] theta_multi
---
float64[] mark_multi

")



(provide :jrc_srvs/smooth_multi "3b1e979c6d58d1f5eaa86cabfb1c7458")


