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

class TextInteractionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task = null;
      this.action = null;
      this.query_text = null;
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
      if (initObj.hasOwnProperty('query_text')) {
        this.query_text = initObj.query_text
      }
      else {
        this.query_text = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TextInteractionRequest
    // Serialize message field [task]
    bufferOffset = std_msgs.msg.String.serialize(obj.task, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = std_msgs.msg.String.serialize(obj.action, buffer, bufferOffset);
    // Serialize message field [query_text]
    bufferOffset = std_msgs.msg.String.serialize(obj.query_text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TextInteractionRequest
    let len;
    let data = new TextInteractionRequest(null);
    // Deserialize message field [task]
    data.task = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [query_text]
    data.query_text = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.task);
    length += std_msgs.msg.String.getMessageSize(object.action);
    length += std_msgs.msg.String.getMessageSize(object.query_text);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_interaction_server/TextInteractionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9cc91f0db9a356c6f5e739901dcb1a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String task
    std_msgs/String action
    std_msgs/String query_text
    
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
    const resolved = new TextInteractionRequest(null);
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

    if (msg.query_text !== undefined) {
      resolved.query_text = std_msgs.msg.String.Resolve(msg.query_text)
    }
    else {
      resolved.query_text = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class TextInteractionResponse {
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
    // Serializes a message object of type TextInteractionResponse
    // Serialize message field [result]
    bufferOffset = std_msgs.msg.String.serialize(obj.result, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TextInteractionResponse
    let len;
    let data = new TextInteractionResponse(null);
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
    return 'lasr_interaction_server/TextInteractionResponse';
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
    const resolved = new TextInteractionResponse(null);
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
  Request: TextInteractionRequest,
  Response: TextInteractionResponse,
  md5sum() { return 'b626d0b32e2760daee50a75d7d83566b'; },
  datatype() { return 'lasr_interaction_server/TextInteraction'; }
};
