// Auto-generated. Do not edit!

// (in-package fusion_model.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let detection_object = require('./detection_object.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class detection_object_array {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.detection_objects = null;
      this.frame_det_id = null;
      this.seq_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('detection_objects')) {
        this.detection_objects = initObj.detection_objects
      }
      else {
        this.detection_objects = [];
      }
      if (initObj.hasOwnProperty('frame_det_id')) {
        this.frame_det_id = initObj.frame_det_id
      }
      else {
        this.frame_det_id = 0;
      }
      if (initObj.hasOwnProperty('seq_id')) {
        this.seq_id = initObj.seq_id
      }
      else {
        this.seq_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type detection_object_array
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [detection_objects]
    // Serialize the length for message field [detection_objects]
    bufferOffset = _serializer.uint32(obj.detection_objects.length, buffer, bufferOffset);
    obj.detection_objects.forEach((val) => {
      bufferOffset = detection_object.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [frame_det_id]
    bufferOffset = _serializer.uint32(obj.frame_det_id, buffer, bufferOffset);
    // Serialize message field [seq_id]
    bufferOffset = _serializer.string(obj.seq_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type detection_object_array
    let len;
    let data = new detection_object_array(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [detection_objects]
    // Deserialize array length for message field [detection_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detection_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detection_objects[i] = detection_object.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [frame_det_id]
    data.frame_det_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [seq_id]
    data.seq_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.detection_objects.forEach((val) => {
      length += detection_object.getMessageSize(val);
    });
    length += object.seq_id.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fusion_model/detection_object_array';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ddcbfbfcf26ff58a278daeb743c6d53d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new detection_object_array(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.detection_objects !== undefined) {
      resolved.detection_objects = new Array(msg.detection_objects.length);
      for (let i = 0; i < resolved.detection_objects.length; ++i) {
        resolved.detection_objects[i] = detection_object.Resolve(msg.detection_objects[i]);
      }
    }
    else {
      resolved.detection_objects = []
    }

    if (msg.frame_det_id !== undefined) {
      resolved.frame_det_id = msg.frame_det_id;
    }
    else {
      resolved.frame_det_id = 0
    }

    if (msg.seq_id !== undefined) {
      resolved.seq_id = msg.seq_id;
    }
    else {
      resolved.seq_id = ''
    }

    return resolved;
    }
};

module.exports = detection_object_array;
