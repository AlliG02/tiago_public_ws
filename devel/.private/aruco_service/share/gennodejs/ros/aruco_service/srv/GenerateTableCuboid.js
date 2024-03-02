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

class GenerateTableCuboidRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.table = null;
      this.long_side = null;
      this.short_side = null;
      this.padding = null;
      this.is_rect = null;
      this.radius = null;
    }
    else {
      if (initObj.hasOwnProperty('table')) {
        this.table = initObj.table
      }
      else {
        this.table = 0;
      }
      if (initObj.hasOwnProperty('long_side')) {
        this.long_side = initObj.long_side
      }
      else {
        this.long_side = 0.0;
      }
      if (initObj.hasOwnProperty('short_side')) {
        this.short_side = initObj.short_side
      }
      else {
        this.short_side = 0.0;
      }
      if (initObj.hasOwnProperty('padding')) {
        this.padding = initObj.padding
      }
      else {
        this.padding = 0.0;
      }
      if (initObj.hasOwnProperty('is_rect')) {
        this.is_rect = initObj.is_rect
      }
      else {
        this.is_rect = false;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateTableCuboidRequest
    // Serialize message field [table]
    bufferOffset = _serializer.int8(obj.table, buffer, bufferOffset);
    // Serialize message field [long_side]
    bufferOffset = _serializer.float64(obj.long_side, buffer, bufferOffset);
    // Serialize message field [short_side]
    bufferOffset = _serializer.float64(obj.short_side, buffer, bufferOffset);
    // Serialize message field [padding]
    bufferOffset = _serializer.float64(obj.padding, buffer, bufferOffset);
    // Serialize message field [is_rect]
    bufferOffset = _serializer.bool(obj.is_rect, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float64(obj.radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateTableCuboidRequest
    let len;
    let data = new GenerateTableCuboidRequest(null);
    // Deserialize message field [table]
    data.table = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [long_side]
    data.long_side = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [short_side]
    data.short_side = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [padding]
    data.padding = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_rect]
    data.is_rect = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 34;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aruco_service/GenerateTableCuboidRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6bd5a25d1e39ec0af0c20654fb9516fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 table
    float64 long_side
    float64 short_side
    float64 padding
    bool is_rect
    float64 radius
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateTableCuboidRequest(null);
    if (msg.table !== undefined) {
      resolved.table = msg.table;
    }
    else {
      resolved.table = 0
    }

    if (msg.long_side !== undefined) {
      resolved.long_side = msg.long_side;
    }
    else {
      resolved.long_side = 0.0
    }

    if (msg.short_side !== undefined) {
      resolved.short_side = msg.short_side;
    }
    else {
      resolved.short_side = 0.0
    }

    if (msg.padding !== undefined) {
      resolved.padding = msg.padding;
    }
    else {
      resolved.padding = 0.0
    }

    if (msg.is_rect !== undefined) {
      resolved.is_rect = msg.is_rect;
    }
    else {
      resolved.is_rect = false
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    return resolved;
    }
};

class GenerateTableCuboidResponse {
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
    // Serializes a message object of type GenerateTableCuboidResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateTableCuboidResponse
    let len;
    let data = new GenerateTableCuboidResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aruco_service/GenerateTableCuboidResponse';
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
    const resolved = new GenerateTableCuboidResponse(null);
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
  Request: GenerateTableCuboidRequest,
  Response: GenerateTableCuboidResponse,
  md5sum() { return '2c1fa4b624df92535558f89b72b88a87'; },
  datatype() { return 'aruco_service/GenerateTableCuboid'; }
};
