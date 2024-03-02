// Auto-generated. Do not edit!

// (in-package interaction_module.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AudioAndTextInteractionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.subaction = null;
      this.query_text = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('subaction')) {
        this.subaction = initObj.subaction
      }
      else {
        this.subaction = '';
      }
      if (initObj.hasOwnProperty('query_text')) {
        this.query_text = initObj.query_text
      }
      else {
        this.query_text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AudioAndTextInteractionRequest
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [subaction]
    bufferOffset = _serializer.string(obj.subaction, buffer, bufferOffset);
    // Serialize message field [query_text]
    bufferOffset = _serializer.string(obj.query_text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AudioAndTextInteractionRequest
    let len;
    let data = new AudioAndTextInteractionRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [subaction]
    data.subaction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_text]
    data.query_text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.action);
    length += _getByteLength(object.subaction);
    length += _getByteLength(object.query_text);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interaction_module/AudioAndTextInteractionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2582543b12406a0e716cac33410996e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string action
    string subaction
    string query_text
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AudioAndTextInteractionRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.subaction !== undefined) {
      resolved.subaction = msg.subaction;
    }
    else {
      resolved.subaction = ''
    }

    if (msg.query_text !== undefined) {
      resolved.query_text = msg.query_text;
    }
    else {
      resolved.query_text = ''
    }

    return resolved;
    }
};

class AudioAndTextInteractionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AudioAndTextInteractionResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AudioAndTextInteractionResponse
    let len;
    let data = new AudioAndTextInteractionResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.result);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interaction_module/AudioAndTextInteractionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ef8cb8c27fbede28b0373c7f7c318e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status
    string result
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AudioAndTextInteractionResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: AudioAndTextInteractionRequest,
  Response: AudioAndTextInteractionResponse,
  md5sum() { return '56cb91b1044347ee934e8b6c5a253efa'; },
  datatype() { return 'interaction_module/AudioAndTextInteraction'; }
};
