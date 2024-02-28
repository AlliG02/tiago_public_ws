// Auto-generated. Do not edit!

// (in-package lasr_vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BodyPixMask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mask = null;
      this.shape = null;
    }
    else {
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = [];
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BodyPixMask
    // Serialize message field [mask]
    bufferOffset = _arraySerializer.bool(obj.mask, buffer, bufferOffset, null);
    // Serialize message field [shape]
    bufferOffset = _arraySerializer.uint32(obj.shape, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BodyPixMask
    let len;
    let data = new BodyPixMask(null);
    // Deserialize message field [mask]
    data.mask = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [shape]
    data.shape = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mask.length;
    length += 4 * object.shape.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lasr_vision_msgs/BodyPixMask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cdf7dd251c64f79d405b25f2b6644fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 1D array of mask
    bool[] mask
    
    # Shape
    #
    # Use in mask.reshape(...shape) to get back 2D array of mask
    uint32[] shape
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BodyPixMask(null);
    if (msg.mask !== undefined) {
      resolved.mask = msg.mask;
    }
    else {
      resolved.mask = []
    }

    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = []
    }

    return resolved;
    }
};

module.exports = BodyPixMask;
