// Auto-generated. Do not edit!

// (in-package tiago_controllers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ArmTorsoPosRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.torso_goals = null;
      this.arm_goals = null;
      this.plan = null;
    }
    else {
      if (initObj.hasOwnProperty('torso_goals')) {
        this.torso_goals = initObj.torso_goals
      }
      else {
        this.torso_goals = 0.0;
      }
      if (initObj.hasOwnProperty('arm_goals')) {
        this.arm_goals = initObj.arm_goals
      }
      else {
        this.arm_goals = [];
      }
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmTorsoPosRequest
    // Serialize message field [torso_goals]
    bufferOffset = _serializer.float32(obj.torso_goals, buffer, bufferOffset);
    // Serialize message field [arm_goals]
    bufferOffset = _arraySerializer.float32(obj.arm_goals, buffer, bufferOffset, null);
    // Serialize message field [plan]
    bufferOffset = _serializer.bool(obj.plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmTorsoPosRequest
    let len;
    let data = new ArmTorsoPosRequest(null);
    // Deserialize message field [torso_goals]
    data.torso_goals = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm_goals]
    data.arm_goals = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [plan]
    data.plan = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.arm_goals.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tiago_controllers/ArmTorsoPosRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5aab766011fe9a515de15247be541bd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 torso_goals
    float32[] arm_goals
    bool plan
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmTorsoPosRequest(null);
    if (msg.torso_goals !== undefined) {
      resolved.torso_goals = msg.torso_goals;
    }
    else {
      resolved.torso_goals = 0.0
    }

    if (msg.arm_goals !== undefined) {
      resolved.arm_goals = msg.arm_goals;
    }
    else {
      resolved.arm_goals = []
    }

    if (msg.plan !== undefined) {
      resolved.plan = msg.plan;
    }
    else {
      resolved.plan = false
    }

    return resolved;
    }
};

class ArmTorsoPosResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmTorsoPosResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmTorsoPosResponse
    let len;
    let data = new ArmTorsoPosResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tiago_controllers/ArmTorsoPosResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmTorsoPosResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ArmTorsoPosRequest,
  Response: ArmTorsoPosResponse,
  md5sum() { return '3f0dca51556e205f687af18e1b29aeb3'; },
  datatype() { return 'tiago_controllers/ArmTorsoPos'; }
};
