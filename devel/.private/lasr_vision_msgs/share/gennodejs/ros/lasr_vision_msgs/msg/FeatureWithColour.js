// Auto-generated. Do not edit!

// (in-package lasr_vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ColourPrediction = require('./ColourPrediction.js');

//-----------------------------------------------------------

class FeatureWithColour {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.colours = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('colours')) {
        this.colours = initObj.colours
      }
      else {
        this.colours = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeatureWithColour
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [colours]
    // Serialize the length for message field [colours]
    bufferOffset = _serializer.uint32(obj.colours.length, buffer, bufferOffset);
    obj.colours.forEach((val) => {
      bufferOffset = ColourPrediction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeatureWithColour
    let len;
    let data = new FeatureWithColour(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [colours]
    // Deserialize array length for message field [colours]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.colours = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.colours[i] = ColourPrediction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    object.colours.forEach((val) => {
      length += ColourPrediction.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lasr_vision_msgs/FeatureWithColour';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '559e97f1ed0bbb763b8f3f59434ad208';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Feature name
    string name
    
    # Colour predictions
    lasr_vision_msgs/ColourPrediction[] colours
    
    ================================================================================
    MSG: lasr_vision_msgs/ColourPrediction
    # Colour
    string colour
    
    # Distance to the colour
    #
    # Lower = higher chance
    float32 distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeatureWithColour(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.colours !== undefined) {
      resolved.colours = new Array(msg.colours.length);
      for (let i = 0; i < resolved.colours.length; ++i) {
        resolved.colours[i] = ColourPrediction.Resolve(msg.colours[i]);
      }
    }
    else {
      resolved.colours = []
    }

    return resolved;
    }
};

module.exports = FeatureWithColour;
