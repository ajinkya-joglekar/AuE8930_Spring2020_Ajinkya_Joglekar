
(cl:in-package :asdf)

(defsystem "assignment_2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MakeCircle" :depends-on ("_package_MakeCircle"))
    (:file "_package_MakeCircle" :depends-on ("_package"))
  ))