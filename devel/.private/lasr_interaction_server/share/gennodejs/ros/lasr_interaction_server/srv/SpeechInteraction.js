// Auto-generated. Do not edit!

// (in-package lasr_interaction_server.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SpeechInteractionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeechInteractionRequest
    // Serialize message field [task]
    bufferOffset = std_msgs.msg.String.serialize(obj.task, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = std_msgs.msg.String.serialize(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeechInteractionRequest
    let len;
    let data = new SpeechInteractionRequest(null);
    // Deserialize message field [task]
    data.task = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.task);
    length += std_msgs.msg.String.getMessageSize(object.action);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_interaction_server/SpeechInteractionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f44d0e40ce4590eaca17b20f89c9ede5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String task
    std_msgs/String action
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeechInteractionRequest(null);
    if (msg.task !== undefined) {
      resolved.task = std_msgs.msg.String.Resolve(msg.task)
    }
    else {
      resolved.task = new std_msgs.msg.String()
    }

    if (msg.action !== undefined) {
      resolved.action = std_msgs.msg.String.Resolve(msg.action)
    }
    else {
      resolved.action = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class SpeechInteractionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeechInteractionResponse
    // Serialize message field [result]
    bufferOffset = std_msgs.msg.String.serialize(obj.result, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeechInteractionResponse
    let len;
    let data = new SpeechInteractionResponse(null);
    // Deserialize message field [result]
    data.result = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.result);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_interaction_server/SpeechInteractionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0800494afb8b2c91f943cf1d38c7b64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String result
    std_msgs/Bool success
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeechInteractionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = std_msgs.msg.String.Resolve(msg.result)
    }
    else {
      resolved.result = new std_msgs.msg.String()
    }

    if (msg.success !== undefined) {
      resolved.success = std_msgs.msg.Bool.Resolve(msg.success)
    }
    else {
      resolved.success = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = {
  Request: SpeechInteractionRequest,
  Response: SpeechInteractionResponse,
  md5sum() { return 'c6778e75ee863a7048845ef167f478f5'; },
  datatype() { return 'lasr_interaction_server/SpeechInteraction'; }
};
