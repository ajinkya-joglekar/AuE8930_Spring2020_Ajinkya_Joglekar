;; Auto-generated. Do not edit!


(when (boundp 'assignment_2::MakeCircle)
  (if (not (find-package "ASSIGNMENT_2"))
    (make-package "ASSIGNMENT_2"))
  (shadow 'MakeCircle (find-package "ASSIGNMENT_2")))
(unless (find-package "ASSIGNMENT_2::MAKECIRCLE")
  (make-package "ASSIGNMENT_2::MAKECIRCLE"))
(unless (find-package "ASSIGNMENT_2::MAKECIRCLEREQUEST")
  (make-package "ASSIGNMENT_2::MAKECIRCLEREQUEST"))
(unless (find-package "ASSIGNMENT_2::MAKECIRCLERESPONSE")
  (make-package "ASSIGNMENT_2::MAKECIRCLERESPONSE"))

(in-package "ROS")





(defclass assignment_2::MakeCircleRequest
  :super ros::object
  :slots (_s _r ))

(defmethod assignment_2::MakeCircleRequest
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

(defclass assignment_2::MakeCircleResponse
  :super ros::object
  :slots ())

(defmethod assignment_2::MakeCircleResponse
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

(defclass assignment_2::MakeCircle
  :super ros::object
  :slots ())

(setf (get assignment_2::MakeCircle :md5sum-) "6d766f6a2db01255c7ae96df4f8888c5")
(setf (get assignment_2::MakeCircle :datatype-) "assignment_2/MakeCircle")
(setf (get assignment_2::MakeCircle :request) assignment_2::MakeCircleRequest)
(setf (get assignment_2::MakeCircle :response) assignment_2::MakeCircleResponse)

(defmethod assignment_2::MakeCircleRequest
  (:response () (instance assignment_2::MakeCircleResponse :init)))

(setf (get assignment_2::MakeCircleRequest :md5sum-) "6d766f6a2db01255c7ae96df4f8888c5")
(setf (get assignment_2::MakeCircleRequest :datatype-) "assignment_2/MakeCircleRequest")
(setf (get assignment_2::MakeCircleRequest :definition-)
      "float32 s
float32 r

---
")

(setf (get assignment_2::MakeCircleResponse :md5sum-) "6d766f6a2db01255c7ae96df4f8888c5")
(setf (get assignment_2::MakeCircleResponse :datatype-) "assignment_2/MakeCircleResponse")
(setf (get assignment_2::MakeCircleResponse :definition-)
      "float32 s
float32 r

---
")



(provide :assignment_2/MakeCircle "6d766f6a2db01255c7ae96df4f8888c5")


