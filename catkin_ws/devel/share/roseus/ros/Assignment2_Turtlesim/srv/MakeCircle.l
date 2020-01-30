;; Auto-generated. Do not edit!


(when (boundp 'Assignment2_Turtlesim::MakeCircle)
  (if (not (find-package "ASSIGNMENT2_TURTLESIM"))
    (make-package "ASSIGNMENT2_TURTLESIM"))
  (shadow 'MakeCircle (find-package "ASSIGNMENT2_TURTLESIM")))
(unless (find-package "ASSIGNMENT2_TURTLESIM::MAKECIRCLE")
  (make-package "ASSIGNMENT2_TURTLESIM::MAKECIRCLE"))
(unless (find-package "ASSIGNMENT2_TURTLESIM::MAKECIRCLEREQUEST")
  (make-package "ASSIGNMENT2_TURTLESIM::MAKECIRCLEREQUEST"))
(unless (find-package "ASSIGNMENT2_TURTLESIM::MAKECIRCLERESPONSE")
  (make-package "ASSIGNMENT2_TURTLESIM::MAKECIRCLERESPONSE"))

(in-package "ROS")





(defclass Assignment2_Turtlesim::MakeCircleRequest
  :super ros::object
  :slots (_s _r ))

(defmethod Assignment2_Turtlesim::MakeCircleRequest
  (:init
   (&key
    ((:s __s) 0.0)
    ((:r __r) 0.0)
    )
   (send-super :init)
   (setq _s (float __s))
   (setq _r (float __r))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:serialization-length
   ()
   (+
    ;; float32 _s
    4
    ;; float32 _r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass Assignment2_Turtlesim::MakeCircleResponse
  :super ros::object
  :slots ())

(defmethod Assignment2_Turtlesim::MakeCircleResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass Assignment2_Turtlesim::MakeCircle
  :super ros::object
  :slots ())

(setf (get Assignment2_Turtlesim::MakeCircle :md5sum-) "6d766f6a2db01255c7ae96df4f8888c5")
(setf (get Assignment2_Turtlesim::MakeCircle :datatype-) "Assignment2_Turtlesim/MakeCircle")
(setf (get Assignment2_Turtlesim::MakeCircle :request) Assignment2_Turtlesim::MakeCircleRequest)
(setf (get Assignment2_Turtlesim::MakeCircle :response) Assignment2_Turtlesim::MakeCircleResponse)

(defmethod Assignment2_Turtlesim::MakeCircleRequest
  (:response () (instance Assignment2_Turtlesim::MakeCircleResponse :init)))

(setf (get Assignment2_Turtlesim::MakeCircleRequest :md5sum-) "6d766f6a2db01255c7ae96df4f8888c5")
(setf (get Assignment2_Turtlesim::MakeCircleRequest :datatype-) "Assignment2_Turtlesim/MakeCircleRequest")
(setf (get Assignment2_Turtlesim::MakeCircleRequest :definition-)
      "float32 s
float32 r

---
")

(setf (get Assignment2_Turtlesim::MakeCircleResponse :md5sum-) "6d766f6a2db01255c7ae96df4f8888c5")
(setf (get Assignment2_Turtlesim::MakeCircleResponse :datatype-) "Assignment2_Turtlesim/MakeCircleResponse")
(setf (get Assignment2_Turtlesim::MakeCircleResponse :definition-)
      "float32 s
float32 r

---
")



(provide :Assignment2_Turtlesim/MakeCircle "6d766f6a2db01255c7ae96df4f8888c5")


