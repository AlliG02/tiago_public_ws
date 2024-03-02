// Auto-generated. Do not edit!

// (in-package aruco_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PublishTablePointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.table = null;
    }
    else {
      if (initObj.hasOwnProperty('table')) {
        this.table = initObj.table
      }
      else {
        this.table = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PublishTablePointsRequest
    // Serialize message field [table]
    bufferOffset = _serializer.int8(obj.table, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PublishTablePointsRequest
    let len;
    let data = new PublishTablePointsRequest(null);
    // Deserialize message field [table]
    data.table = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aruco_service/PublishTablePointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c62310621d06b36148900c9fb5e61f3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 table
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PublishTablePointsRequest(null);
    if (msg.table !== undefined) {
      resolved.table = msg.table;
    }
    else {
      resolved.table = 0
    }

    return resolved;
    }
};

class PublishTablePointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PublishTablePointsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PublishTablePointsResponse
    let len;
    let data = new PublishTablePointsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aruco_service/PublishTablePointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PublishTablePointsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: PublishTablePointsRequest,
  Response: PublishTablePointsResponse,
  md5sum() { return '4eaecc5d02ae2f2661dfa53121841fde'; },
  datatype() { return 'aruco_service/PublishTablePoints'; }
};
