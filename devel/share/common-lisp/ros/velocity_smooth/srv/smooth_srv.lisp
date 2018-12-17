; Auto-generated. Do not edit!


(cl:in-package velocity_smooth-srv)


;//! \htmlinclude smooth_srv-request.msg.html

(cl:defclass <smooth_srv-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:float
    :initform 0.0))
)

(cl:defclass smooth_srv-request (<smooth_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <smooth_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'smooth_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name velocity_smooth-srv:<smooth_srv-request> is deprecated: use velocity_smooth-srv:smooth_srv-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <smooth_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velocity_smooth-srv:x-val is deprecated.  Use velocity_smooth-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <smooth_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velocity_smooth-srv:y-val is deprecated.  Use velocity_smooth-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <smooth_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velocity_smooth-srv:theta-val is deprecated.  Use velocity_smooth-srv:theta instead.")
  (theta m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <smooth_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velocity_smooth-srv:status-val is deprecated.  Use velocity_smooth-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <smooth_srv-request>) ostream)
  "Serializes a message object of type '<smooth_srv-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <smooth_srv-request>) istream)
  "Deserializes a message object of type '<smooth_srv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'status) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<smooth_srv-request>)))
  "Returns string type for a service object of type '<smooth_srv-request>"
  "velocity_smooth/smooth_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'smooth_srv-request)))
  "Returns string type for a service object of type 'smooth_srv-request"
  "velocity_smooth/smooth_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<smooth_srv-request>)))
  "Returns md5sum for a message object of type '<smooth_srv-request>"
  "7f92d35d2c82d2a4c46ca92d3433aa56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'smooth_srv-request)))
  "Returns md5sum for a message object of type 'smooth_srv-request"
  "7f92d35d2c82d2a4c46ca92d3433aa56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<smooth_srv-request>)))
  "Returns full string definition for message of type '<smooth_srv-request>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 theta~%float64 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'smooth_srv-request)))
  "Returns full string definition for message of type 'smooth_srv-request"
  (cl:format cl:nil "float64 x~%float64 y~%float64 theta~%float64 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <smooth_srv-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <smooth_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'smooth_srv-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':status (status msg))
))
;//! \htmlinclude smooth_srv-response.msg.html

(cl:defclass <smooth_srv-response> (roslisp-msg-protocol:ros-message)
  ((mark
    :reader mark
    :initarg :mark
    :type cl:float
    :initform 0.0))
)

(cl:defclass smooth_srv-response (<smooth_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <smooth_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'smooth_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name velocity_smooth-srv:<smooth_srv-response> is deprecated: use velocity_smooth-srv:smooth_srv-response instead.")))

(cl:ensure-generic-function 'mark-val :lambda-list '(m))
(cl:defmethod mark-val ((m <smooth_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velocity_smooth-srv:mark-val is deprecated.  Use velocity_smooth-srv:mark instead.")
  (mark m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <smooth_srv-response>) ostream)
  "Serializes a message object of type '<smooth_srv-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mark))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <smooth_srv-response>) istream)
  "Deserializes a message object of type '<smooth_srv-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mark) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<smooth_srv-response>)))
  "Returns string type for a service object of type '<smooth_srv-response>"
  "velocity_smooth/smooth_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'smooth_srv-response)))
  "Returns string type for a service object of type 'smooth_srv-response"
  "velocity_smooth/smooth_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<smooth_srv-response>)))
  "Returns md5sum for a message object of type '<smooth_srv-response>"
  "7f92d35d2c82d2a4c46ca92d3433aa56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'smooth_srv-response)))
  "Returns md5sum for a message object of type 'smooth_srv-response"
  "7f92d35d2c82d2a4c46ca92d3433aa56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<smooth_srv-response>)))
  "Returns full string definition for message of type '<smooth_srv-response>"
  (cl:format cl:nil "float64 mark~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'smooth_srv-response)))
  "Returns full string definition for message of type 'smooth_srv-response"
  (cl:format cl:nil "float64 mark~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <smooth_srv-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <smooth_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'smooth_srv-response
    (cl:cons ':mark (mark msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'smooth_srv)))
  'smooth_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'smooth_srv)))
  'smooth_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'smooth_srv)))
  "Returns string type for a service object of type '<smooth_srv>"
  "velocity_smooth/smooth_srv")