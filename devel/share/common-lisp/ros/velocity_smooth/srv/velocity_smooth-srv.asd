
(cl:in-package :asdf)

(defsystem "velocity_smooth-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "smooth_srv" :depends-on ("_package_smooth_srv"))
    (:file "_package_smooth_srv" :depends-on ("_package"))
    (:file "smooth_srv_multi" :depends-on ("_package_smooth_srv_multi"))
    (:file "_package_smooth_srv_multi" :depends-on ("_package"))
  ))