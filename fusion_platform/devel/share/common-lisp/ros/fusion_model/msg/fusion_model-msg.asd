
(cl:in-package :asdf)

(defsystem "fusion_model-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "detection_object" :depends-on ("_package_detection_object"))
    (:file "_package_detection_object" :depends-on ("_package"))
    (:file "detection_object_array" :depends-on ("_package_detection_object_array"))
    (:file "_package_detection_object_array" :depends-on ("_package"))
  ))