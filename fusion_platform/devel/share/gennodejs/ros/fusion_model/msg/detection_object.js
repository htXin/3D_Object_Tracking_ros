// Auto-generated. Do not edit!

// (in-package fusion_model.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class detection_object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.x1 = null;
      this.y1 = null;
      this.x2 = null;
      this.y2 = null;
      this.score = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.l = null;
      this.h = null;
      this.w = null;
      this.rot_y = null;
      this.ori_tmp = null;
      this.object_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = '';
      }
      if (initObj.hasOwnProperty('y1')) {
        this.y1 = initObj.y1
      }
      else {
        this.y1 = '';
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = '';
      }
      if (initObj.hasOwnProperty('y2')) {
        this.y2 = initObj.y2
      }
      else {
        this.y2 = '';
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = '';
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = '';
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = '';
      }
      if (initObj.hasOwnProperty('l')) {
        this.l = initObj.l
      }
      else {
        this.l = '';
      }
      if (initObj.hasOwnProperty('h')) {
        this.h = initObj.h
      }
      else {
        this.h = '';
      }
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = '';
      }
      if (initObj.hasOwnProperty('rot_y')) {
        this.rot_y = initObj.rot_y
      }
      else {
        this.rot_y = '';
      }
      if (initObj.hasOwnProperty('ori_tmp')) {
        this.ori_tmp = initObj.ori_tmp
      }
      else {
        this.ori_tmp = '';
      }
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type detection_object
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.string(obj.x1, buffer, bufferOffset);
    // Serialize message field [y1]
    bufferOffset = _serializer.string(obj.y1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.string(obj.x2, buffer, bufferOffset);
    // Serialize message field [y2]
    bufferOffset = _serializer.string(obj.y2, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.string(obj.score, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.string(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.string(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.string(obj.z, buffer, bufferOffset);
    // Serialize message field [l]
    bufferOffset = _serializer.string(obj.l, buffer, bufferOffset);
    // Serialize message field [h]
    bufferOffset = _serializer.string(obj.h, buffer, bufferOffset);
    // Serialize message field [w]
    bufferOffset = _serializer.string(obj.w, buffer, bufferOffset);
    // Serialize message field [rot_y]
    bufferOffset = _serializer.string(obj.rot_y, buffer, bufferOffset);
    // Serialize message field [ori_tmp]
    bufferOffset = _serializer.string(obj.ori_tmp, buffer, bufferOffset);
    // Serialize message field [object_id]
    bufferOffset = _serializer.uint32(obj.object_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type detection_object
    let len;
    let data = new detection_object(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [y1]
    data.y1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [y2]
    data.y2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [l]
    data.l = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [h]
    data.h = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [w]
    data.w = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rot_y]
    data.rot_y = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ori_tmp]
    data.ori_tmp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type.length;
    length += object.x1.length;
    length += object.y1.length;
    length += object.x2.length;
    length += object.y2.length;
    length += object.score.length;
    length += object.x.length;
    length += object.y.length;
    length += object.z.length;
    length += object.l.length;
    length += object.h.length;
    length += object.w.length;
    length += object.rot_y.length;
    length += object.ori_tmp.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fusion_model/detection_object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dd18a1a4f12b5503132ac93e640ce1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new detection_object(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = ''
    }

    if (msg.y1 !== undefined) {
      resolved.y1 = msg.y1;
    }
    else {
      resolved.y1 = ''
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = ''
    }

    if (msg.y2 !== undefined) {
      resolved.y2 = msg.y2;
    }
    else {
      resolved.y2 = ''
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = ''
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = ''
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = ''
    }

    if (msg.l !== undefined) {
      resolved.l = msg.l;
    }
    else {
      resolved.l = ''
    }

    if (msg.h !== undefined) {
      resolved.h = msg.h;
    }
    else {
      resolved.h = ''
    }

    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = ''
    }

    if (msg.rot_y !== undefined) {
      resolved.rot_y = msg.rot_y;
    }
    else {
      resolved.rot_y = ''
    }

    if (msg.ori_tmp !== undefined) {
      resolved.ori_tmp = msg.ori_tmp;
    }
    else {
      resolved.ori_tmp = ''
    }

    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = 0
    }

    return resolved;
    }
};

module.exports = detection_object;
