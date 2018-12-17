;; Auto-generated. Do not edit!


(when (boundp 'move_forward::Jrc_move)
  (if (not (find-package "MOVE_FORWARD"))
    (make-package "MOVE_FORWARD"))
  (shadow 'Jrc_move (find-package "MOVE_FORWARD")))
(unless (find-package "MOVE_FORWARD::JRC_MOVE")
  (make-package "MOVE_FORWARD::JRC_MOVE"))
(unless (find-package "MOVE_FORWARD::JRC_MOVEREQUEST")
  (make-package "MOVE_FORWARD::JRC_MOVEREQUEST"))
(unless (find-package "MOVE_FORWARD::JRC_MOVERESPONSE")
  (make-package "MOVE_FORWARD::JRC_MOVERESPONSE"))

(in-package "ROS")





(defclass move_forward::Jrc_moveRequest
  :super ros::object
  :slots (_x _y _theta ))

(defmethod move_forward::Jrc_moveRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
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
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
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
   ;;
   self)
  )

(defclass move_forward::Jrc_moveResponse
  :super ros::object
  :slots (_mark ))

(defmethod move_forward::Jrc_moveResponse
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

(defclass move_forward::Jrc_move
  :super ros::object
  :slots ())

(setf (get move_forward::Jrc_move :md5sum-) "5f282b47bb61e9d36bb6017105afa68a")
(setf (get move_forward::Jrc_move :datatype-) "move_forward/Jrc_move")
(setf (get move_forward::Jrc_move :request) move_forward::Jrc_moveRequest)
(setf (get move_forward::Jrc_move :response) move_forward::Jrc_moveResponse)

(defmethod move_forward::Jrc_moveRequest
  (:response () (instance move_forward::Jrc_moveResponse :init)))

(setf (get move_forward::Jrc_moveRequest :md5sum-) "5f282b47bb61e9d36bb6017105afa68a")
(setf (get move_forward::Jrc_moveRequest :datatype-) "move_forward/Jrc_moveRequest")
(setf (get move_forward::Jrc_moveRequest :definition-)
      "float64 x
float64 y
float64 theta
---
float64 mark

")

(setf (get move_forward::Jrc_moveResponse :md5sum-) "5f282b47bb61e9d36bb6017105afa68a")
(setf (get move_forward::Jrc_moveResponse :datatype-) "move_forward/Jrc_moveResponse")
(setf (get move_forward::Jrc_moveResponse :definition-)
      "float64 x
float64 y
float64 theta
---
float64 mark

")



(provide :move_forward/Jrc_move "5f282b47bb61e9d36bb6017105afa68a")


