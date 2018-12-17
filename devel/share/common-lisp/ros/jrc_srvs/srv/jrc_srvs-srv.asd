
(cl:in-package :asdf)

(defsystem "jrc_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "smooth" :depends-on ("_package_smooth"))
    (:file "_package_smooth" :depends-on ("_package"))
    (:file "smooth_multi" :depends-on ("_package_smooth_multi"))
    (:file "_package_smooth_multi" :depends-on ("_package"))
  ))