;; Auto-generated. Do not edit!


(when (boundp 'fusion_model::detection_object_array)
  (if (not (find-package "FUSION_MODEL"))
    (make-package "FUSION_MODEL"))
  (shadow 'detection_object_array (find-package "FUSION_MODEL")))
(unless (find-package "FUSION_MODEL::DETECTION_OBJECT_ARRAY")
  (make-package "FUSION_MODEL::DETECTION_OBJECT_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude detection_object_array.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fusion_model::detection_object_array
  :super ros::object
  :slots (_header _detection_objects _frame_det_id _seq_id ))

(defmethod fusion_model::detection_object_array
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detection_objects __detection_objects) (let (r) (dotimes (i 0) (push (instance fusion_model::detection_object :init) r)) r))
    ((:frame_det_id __frame_det_id) 0)
    ((:seq_id __seq_id) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _detection_objects __detection_objects)
   (setq _frame_det_id (round __frame_det_id))
   (setq _seq_id (string __seq_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detection_objects
   (&rest __detection_objects)
   (if (keywordp (car __detection_objects))
       (send* _detection_objects __detection_objects)
     (progn
       (if __detection_objects (setq _detection_objects (car __detection_objects)))
       _detection_objects)))
  (:frame_det_id
   (&optional __frame_det_id)
   (if __frame_det_id (setq _frame_det_id __frame_det_id)) _frame_det_id)
  (:seq_id
   (&optional __seq_id)
   (if __seq_id (setq _seq_id __seq_id)) _seq_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; fusion_model/detection_object[] _detection_objects
    (apply #'+ (send-all _detection_objects :serialization-length)) 4
    ;; uint32 _frame_det_id
    4
    ;; string _seq_id
    4 (length _seq_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; fusion_model/detection_object[] _detection_objects
     (write-long (length _detection_objects) s)
     (dolist (elem _detection_objects)
       (send elem :serialize s)
       )
     ;; uint32 _frame_det_id
       (write-long _frame_det_id s)
     ;; string _seq_id
       (write-long (length _seq_id) s) (princ _seq_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; fusion_model/detection_object[] _detection_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detection_objects (let (r) (dotimes (i n) (push (instance fusion_model::detection_object :init) r)) r))
     (dolist (elem- _detection_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _frame_det_id
     (setq _frame_det_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _seq_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _seq_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fusion_model::detection_object_array :md5sum-) "ddcbfbfcf26ff58a278daeb743c6d53d")
(setf (get fusion_model::detection_object_array :datatype-) "fusion_model/detection_object_array")
(setf (get fusion_model::detection_object_array :definition-)
      "Header header
detection_object[] detection_objects
uint32 frame_det_id
string seq_id
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: fusion_model/detection_object
Header header #header timestamp is time of frame acquisition
string type # type of object(pedestrian:1,car:2,cyclist:3)

string x1  
string y1 
string x2 
string y2 

string score

string x # x coordinate of the center of the bottom face of the bounding box
string y # y coordinate of the center of the bottom face of the bounding box
string z # x coordinate of the center of the bottom face of the bounding box
string l # size of bounding box along x dimension
string h # size of bounding box along y dimension
string w # size of bounding box along z dimension
string rot_y # rotation of bounding box with respect to the positive x axis

string ori_tmp
uint32 object_id
")



(provide :fusion_model/detection_object_array "ddcbfbfcf26ff58a278daeb743c6d53d")


