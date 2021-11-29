;; Auto-generated. Do not edit!


(when (boundp 'fusion_model::detection_object)
  (if (not (find-package "FUSION_MODEL"))
    (make-package "FUSION_MODEL"))
  (shadow 'detection_object (find-package "FUSION_MODEL")))
(unless (find-package "FUSION_MODEL::DETECTION_OBJECT")
  (make-package "FUSION_MODEL::DETECTION_OBJECT"))

(in-package "ROS")
;;//! \htmlinclude detection_object.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fusion_model::detection_object
  :super ros::object
  :slots (_header _type _x1 _y1 _x2 _y2 _score _x _y _z _l _h _w _rot_y _ori_tmp _object_id ))

(defmethod fusion_model::detection_object
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:x1 __x1) "")
    ((:y1 __y1) "")
    ((:x2 __x2) "")
    ((:y2 __y2) "")
    ((:score __score) "")
    ((:x __x) "")
    ((:y __y) "")
    ((:z __z) "")
    ((:l __l) "")
    ((:h __h) "")
    ((:w __w) "")
    ((:rot_y __rot_y) "")
    ((:ori_tmp __ori_tmp) "")
    ((:object_id __object_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _x1 (string __x1))
   (setq _y1 (string __y1))
   (setq _x2 (string __x2))
   (setq _y2 (string __y2))
   (setq _score (string __score))
   (setq _x (string __x))
   (setq _y (string __y))
   (setq _z (string __z))
   (setq _l (string __l))
   (setq _h (string __h))
   (setq _w (string __w))
   (setq _rot_y (string __rot_y))
   (setq _ori_tmp (string __ori_tmp))
   (setq _object_id (round __object_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:rot_y
   (&optional __rot_y)
   (if __rot_y (setq _rot_y __rot_y)) _rot_y)
  (:ori_tmp
   (&optional __ori_tmp)
   (if __ori_tmp (setq _ori_tmp __ori_tmp)) _ori_tmp)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; string _x1
    4 (length _x1)
    ;; string _y1
    4 (length _y1)
    ;; string _x2
    4 (length _x2)
    ;; string _y2
    4 (length _y2)
    ;; string _score
    4 (length _score)
    ;; string _x
    4 (length _x)
    ;; string _y
    4 (length _y)
    ;; string _z
    4 (length _z)
    ;; string _l
    4 (length _l)
    ;; string _h
    4 (length _h)
    ;; string _w
    4 (length _w)
    ;; string _rot_y
    4 (length _rot_y)
    ;; string _ori_tmp
    4 (length _ori_tmp)
    ;; uint32 _object_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _x1
       (write-long (length _x1) s) (princ _x1 s)
     ;; string _y1
       (write-long (length _y1) s) (princ _y1 s)
     ;; string _x2
       (write-long (length _x2) s) (princ _x2 s)
     ;; string _y2
       (write-long (length _y2) s) (princ _y2 s)
     ;; string _score
       (write-long (length _score) s) (princ _score s)
     ;; string _x
       (write-long (length _x) s) (princ _x s)
     ;; string _y
       (write-long (length _y) s) (princ _y s)
     ;; string _z
       (write-long (length _z) s) (princ _z s)
     ;; string _l
       (write-long (length _l) s) (princ _l s)
     ;; string _h
       (write-long (length _h) s) (princ _h s)
     ;; string _w
       (write-long (length _w) s) (princ _w s)
     ;; string _rot_y
       (write-long (length _rot_y) s) (princ _rot_y s)
     ;; string _ori_tmp
       (write-long (length _ori_tmp) s) (princ _ori_tmp s)
     ;; uint32 _object_id
       (write-long _object_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _x1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _x1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _y1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _y1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _x2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _x2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _y2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _y2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _score
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _score (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _x
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _x (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _y
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _y (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _z
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _z (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _l
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _l (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _h
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _h (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _w
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _w (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rot_y
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rot_y (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ori_tmp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ori_tmp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _object_id
     (setq _object_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fusion_model::detection_object :md5sum-) "6dd18a1a4f12b5503132ac93e640ce1c")
(setf (get fusion_model::detection_object :datatype-) "fusion_model/detection_object")
(setf (get fusion_model::detection_object :definition-)
      "Header header #header timestamp is time of frame acquisition
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

")



(provide :fusion_model/detection_object "6dd18a1a4f12b5503132ac93e640ce1c")


