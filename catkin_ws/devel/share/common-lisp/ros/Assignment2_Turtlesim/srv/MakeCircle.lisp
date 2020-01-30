; Auto-generated. Do not edit!


(cl:in-package Assignment2_Turtlesim-srv)


;//! \htmlinclude MakeCircle-request.msg.html

(cl:defclass <MakeCircle-request> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0))
)

(cl:defclass MakeCircle-request (<MakeCircle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeCircle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeCircle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Assignment2_Turtlesim-srv:<MakeCircle-request> is deprecated: use Assignment2_Turtlesim-srv:MakeCircle-request instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <MakeCircle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Assignment2_Turtlesim-srv:s-val is deprecated.  Use Assignment2_Turtlesim-srv:s instead.")
  (s m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <MakeCircle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Assignment2_Turtlesim-srv:r-val is deprecated.  Use Assignment2_Turtlesim-srv:r instead.")
  (r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeCircle-request>) ostream)
  "Serializes a message object of type '<MakeCircle-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeCircle-request>) istream)
  "Deserializes a message object of type '<MakeCircle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeCircle-request>)))
  "Returns string type for a service object of type '<MakeCircle-request>"
  "Assignment2_Turtlesim/MakeCircleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeCircle-request)))
  "Returns string type for a service object of type 'MakeCircle-request"
  "Assignment2_Turtlesim/MakeCircleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeCircle-request>)))
  "Returns md5sum for a message object of type '<MakeCircle-request>"
  "6d766f6a2db01255c7ae96df4f8888c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeCircle-request)))
  "Returns md5sum for a message object of type 'MakeCircle-request"
  "6d766f6a2db01255c7ae96df4f8888c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeCircle-request>)))
  "Returns full string definition for message of type '<MakeCircle-request>"
  (cl:format cl:nil "float32 s~%float32 r~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeCircle-request)))
  "Returns full string definition for message of type 'MakeCircle-request"
  (cl:format cl:nil "float32 s~%float32 r~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeCircle-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeCircle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeCircle-request
    (cl:cons ':s (s msg))
    (cl:cons ':r (r msg))
))
;//! \htmlinclude MakeCircle-response.msg.html

(cl:defclass <MakeCircle-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MakeCircle-response (<MakeCircle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeCircle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeCircle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Assignment2_Turtlesim-srv:<MakeCircle-response> is deprecated: use Assignment2_Turtlesim-srv:MakeCircle-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeCircle-response>) ostream)
  "Serializes a message object of type '<MakeCircle-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeCircle-response>) istream)
  "Deserializes a message object of type '<MakeCircle-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeCircle-response>)))
  "Returns string type for a service object of type '<MakeCircle-response>"
  "Assignment2_Turtlesim/MakeCircleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeCircle-response)))
  "Returns string type for a service object of type 'MakeCircle-response"
  "Assignment2_Turtlesim/MakeCircleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeCircle-response>)))
  "Returns md5sum for a message object of type '<MakeCircle-response>"
  "6d766f6a2db01255c7ae96df4f8888c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeCircle-response)))
  "Returns md5sum for a message object of type 'MakeCircle-response"
  "6d766f6a2db01255c7ae96df4f8888c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeCircle-response>)))
  "Returns full string definition for message of type '<MakeCircle-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeCircle-response)))
  "Returns full string definition for message of type 'MakeCircle-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeCircle-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeCircle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeCircle-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MakeCircle)))
  'MakeCircle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MakeCircle)))
  'MakeCircle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeCircle)))
  "Returns string type for a service object of type '<MakeCircle>"
  "Assignment2_Turtlesim/MakeCircle")