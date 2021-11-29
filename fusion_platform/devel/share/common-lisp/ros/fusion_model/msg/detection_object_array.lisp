; Auto-generated. Do not edit!


(cl:in-package fusion_model-msg)


;//! \htmlinclude detection_object_array.msg.html

(cl:defclass <detection_object_array> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (detection_objects
    :reader detection_objects
    :initarg :detection_objects
    :type (cl:vector fusion_model-msg:detection_object)
   :initform (cl:make-array 0 :element-type 'fusion_model-msg:detection_object :initial-element (cl:make-instance 'fusion_model-msg:detection_object)))
   (frame_det_id
    :reader frame_det_id
    :initarg :frame_det_id
    :type cl:integer
    :initform 0)
   (seq_id
    :reader seq_id
    :initarg :seq_id
    :type cl:string
    :initform ""))
)

(cl:defclass detection_object_array (<detection_object_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <detection_object_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'detection_object_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fusion_model-msg:<detection_object_array> is deprecated: use fusion_model-msg:detection_object_array instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <detection_object_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fusion_model-msg:header-val is deprecated.  Use fusion_model-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'detection_objects-val :lambda-list '(m))
(cl:defmethod detection_objects-val ((m <detection_object_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fusion_model-msg:detection_objects-val is deprecated.  Use fusion_model-msg:detection_objects instead.")
  (detection_objects m))

(cl:ensure-generic-function 'frame_det_id-val :lambda-list '(m))
(cl:defmethod frame_det_id-val ((m <detection_object_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fusion_model-msg:frame_det_id-val is deprecated.  Use fusion_model-msg:frame_det_id instead.")
  (frame_det_id m))

(cl:ensure-generic-function 'seq_id-val :lambda-list '(m))
(cl:defmethod seq_id-val ((m <detection_object_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fusion_model-msg:seq_id-val is deprecated.  Use fusion_model-msg:seq_id instead.")
  (seq_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <detection_object_array>) ostream)
  "Serializes a message object of type '<detection_object_array>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detection_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detection_objects))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_det_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_det_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_det_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_det_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'seq_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'seq_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <detection_object_array>) istream)
  "Deserializes a message object of type '<detection_object_array>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detection_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detection_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fusion_model-msg:detection_object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_det_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_det_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_det_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_det_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'seq_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'seq_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<detection_object_array>)))
  "Returns string type for a message object of type '<detection_object_array>"
  "fusion_model/detection_object_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detection_object_array)))
  "Returns string type for a message object of type 'detection_object_array"
  "fusion_model/detection_object_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<detection_object_array>)))
  "Returns md5sum for a message object of type '<detection_object_array>"
  "ddcbfbfcf26ff58a278daeb743c6d53d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'detection_object_array)))
  "Returns md5sum for a message object of type 'detection_object_array"
  "ddcbfbfcf26ff58a278daeb743c6d53d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<detection_object_array>)))
  "Returns full string definition for message of type '<detection_object_array>"
  (cl:format cl:nil "Header header~%detection_object[] detection_objects~%uint32 frame_det_id~%string seq_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: fusion_model/detection_object~%Header header #header timestamp is time of frame acquisition~%string type # type of object(pedestrian:1,car:2,cyclist:3)~%~%string x1  ~%string y1 ~%string x2 ~%string y2 ~%~%string score~%~%string x # x coordinate of the center of the bottom face of the bounding box~%string y # y coordinate of the center of the bottom face of the bounding box~%string z # x coordinate of the center of the bottom face of the bounding box~%string l # size of bounding box along x dimension~%string h # size of bounding box along y dimension~%string w # size of bounding box along z dimension~%string rot_y # rotation of bounding box with respect to the positive x axis~%~%string ori_tmp~%uint32 object_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'detection_object_array)))
  "Returns full string definition for message of type 'detection_object_array"
  (cl:format cl:nil "Header header~%detection_object[] detection_objects~%uint32 frame_det_id~%string seq_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: fusion_model/detection_object~%Header header #header timestamp is time of frame acquisition~%string type # type of object(pedestrian:1,car:2,cyclist:3)~%~%string x1  ~%string y1 ~%string x2 ~%string y2 ~%~%string score~%~%string x # x coordinate of the center of the bottom face of the bounding box~%string y # y coordinate of the center of the bottom face of the bounding box~%string z # x coordinate of the center of the bottom face of the bounding box~%string l # size of bounding box along x dimension~%string h # size of bounding box along y dimension~%string w # size of bounding box along z dimension~%string rot_y # rotation of bounding box with respect to the positive x axis~%~%string ori_tmp~%uint32 object_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <detection_object_array>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detection_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4 (cl:length (cl:slot-value msg 'seq_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <detection_object_array>))
  "Converts a ROS message object to a list"
  (cl:list 'detection_object_array
    (cl:cons ':header (header msg))
    (cl:cons ':detection_objects (detection_objects msg))
    (cl:cons ':frame_det_id (frame_det_id msg))
    (cl:cons ':seq_id (seq_id msg))
))
