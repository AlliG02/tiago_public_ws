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

class Detection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.confidence = null;
      this.xywh = null;
      this.xyseg = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('xywh')) {
        this.xywh = initObj.xywh
      }
      else {
        this.xywh = [];
      }
      if (initObj.hasOwnProperty('xyseg')) {
        this.xyseg = initObj.xyseg
      }
      else {
        this.xyseg = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Detection
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [xywh]
    bufferOffset = _arraySerializer.int32(obj.xywh, buffer, bufferOffset, null);
    // Serialize message field [xyseg]
    bufferOffset = _arraySerializer.int32(obj.xyseg, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Detection
    let len;
    let data = new Detection(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xywh]
    data.xywh = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [xyseg]
    data.xyseg = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += 4 * object.xywh.length;
    length += 4 * object.xyseg.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lasr_vision_msgs/Detection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61d9584ca7ba067a2cddb1ec142f3727';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Detected Object Class
    string name
    
    # How certain we are this is what we think it is
    float32 confidence
    
    # Bounding box mask defined in pixel-space
    int32[] xywh
    
    # Segmentation mask defined in pixel-space
    #
    # This will be empty if a segmentation model was not used
    int32[] xyseg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Detection(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.xywh !== undefined) {
      resolved.xywh = msg.xywh;
    }
    else {
      resolved.xywh = []
    }

    if (msg.xyseg !== undefined) {
      resolved.xyseg = msg.xyseg;
    }
    else {
      resolved.xyseg = []
    }

    return resolved;
    }
};

module.exports = Detection;
