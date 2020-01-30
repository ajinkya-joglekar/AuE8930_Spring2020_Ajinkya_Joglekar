
(cl:in-package :asdf)

(defsystem "Assignment2_Turtlesim-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MakeCircle" :depends-on ("_package_MakeCircle"))
    (:file "_package_MakeCircle" :depends-on ("_package"))
  ))