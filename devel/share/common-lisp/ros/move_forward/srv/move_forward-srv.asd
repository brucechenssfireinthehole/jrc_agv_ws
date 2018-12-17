
(cl:in-package :asdf)

(defsystem "move_forward-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Jrc_move" :depends-on ("_package_Jrc_move"))
    (:file "_package_Jrc_move" :depends-on ("_package"))
  ))