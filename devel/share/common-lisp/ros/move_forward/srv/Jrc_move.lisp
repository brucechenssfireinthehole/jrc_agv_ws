; Auto-generated. Do not edit!


(cl:in-package move_forward-srv)


;//! \htmlinclude Jrc_move-request.msg.html

(cl:defclass <Jrc_move-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass Jrc_move-request (<Jrc_move-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Jrc_move-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Jrc_move-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_forward-srv:<Jrc_move-request> is deprecated: use move_forward-srv:Jrc_move-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Jrc_move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_forward-srv:x-val is deprecated.  Use move_forward-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Jrc_move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_forward-srv:y-val is deprecated.  Use move_forward-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Jrc_move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_forward-srv:theta-val is deprecated.  Use move_forward-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Jrc_move-request>) ostream)
  "Serializes a message object of type '<Jrc_move-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Jrc_move-request>) istream)
  "Deserializes a message object of type '<Jrc_move-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Jrc_move-request>)))
  "Returns string type for a service object of type '<Jrc_move-request>"
  "move_forward/Jrc_moveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Jrc_move-request)))
  "Returns string type for a service object of type 'Jrc_move-request"
  "move_forward/Jrc_moveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Jrc_move-request>)))
  "Returns md5sum for a message object of type '<Jrc_move-request>"
  "5f282b47bb61e9d36bb6017105afa68a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Jrc_move-request)))
  "Returns md5sum for a message object of type 'Jrc_move-request"
  "5f282b47bb61e9d36bb6017105afa68a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Jrc_move-request>)))
  "Returns full string definition for message of type '<Jrc_move-request>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Jrc_move-request)))
  "Returns full string definition for message of type 'Jrc_move-request"
  (cl:format cl:nil "float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Jrc_move-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Jrc_move-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Jrc_move-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude Jrc_move-response.msg.html

(cl:defclass <Jrc_move-response> (roslisp-msg-protocol:ros-message)
  ((mark
    :reader mark
    :initarg :mark
    :type cl:float
    :initform 0.0))
)

(cl:defclass Jrc_move-response (<Jrc_move-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Jrc_move-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Jrc_move-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_forward-srv:<Jrc_move-response> is deprecated: use move_forward-srv:Jrc_move-response instead.")))

(cl:ensure-generic-function 'mark-val :lambda-list '(m))
(cl:defmethod mark-val ((m <Jrc_move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_forward-srv:mark-val is deprecated.  Use move_forward-srv:mark instead.")
  (mark m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Jrc_move-response>) ostream)
  "Serializes a message object of type '<Jrc_move-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Jrc_move-response>) istream)
  "Deserializes a message object of type '<Jrc_move-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Jrc_move-response>)))
  "Returns string type for a service object of type '<Jrc_move-response>"
  "move_forward/Jrc_moveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Jrc_move-response)))
  "Returns string type for a service object of type 'Jrc_move-response"
  "move_forward/Jrc_moveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Jrc_move-response>)))
  "Returns md5sum for a message object of type '<Jrc_move-response>"
  "5f282b47bb61e9d36bb6017105afa68a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Jrc_move-response)))
  "Returns md5sum for a message object of type 'Jrc_move-response"
  "5f282b47bb61e9d36bb6017105afa68a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Jrc_move-response>)))
  "Returns full string definition for message of type '<Jrc_move-response>"
  (cl:format cl:nil "float64 mark~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Jrc_move-response)))
  "Returns full string definition for message of type 'Jrc_move-response"
  (cl:format cl:nil "float64 mark~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Jrc_move-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Jrc_move-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Jrc_move-response
    (cl:cons ':mark (mark msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Jrc_move)))
  'Jrc_move-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Jrc_move)))
  'Jrc_move-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Jrc_move)))
  "Returns string type for a service object of type '<Jrc_move>"
  "move_forward/Jrc_move")