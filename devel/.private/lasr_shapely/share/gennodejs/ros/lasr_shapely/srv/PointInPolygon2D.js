// Auto-generated. Do not edit!

// (in-package lasr_shapely.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PointInPolygon2DRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.polygon = null;
      this.x = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = [];
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointInPolygon2DRequest
    // Serialize message field [polygon]
    bufferOffset = _arraySerializer.float32(obj.polygon, buffer, bufferOffset, null);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointInPolygon2DRequest
    let len;
    let data = new PointInPolygon2DRequest(null);
    // Deserialize message field [polygon]
    data.polygon = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.polygon.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_shapely/PointInPolygon2DRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4da2be5c13fc25f960614f08b6a5f1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 1D-array of ordered pairs of points (connected by edge) that define the polygon
    float32[] polygon
    # X coordinate of point
    float32 x
    # Y coordinate of point
    float32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointInPolygon2DRequest(null);
    if (msg.polygon !== undefined) {
      resolved.polygon = msg.polygon;
    }
    else {
      resolved.polygon = []
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    return resolved;
    }
};

class PointInPolygon2DResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inside = null;
    }
    else {
      if (initObj.hasOwnProperty('inside')) {
        this.inside = initObj.inside
      }
      else {
        this.inside = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointInPolygon2DResponse
    // Serialize message field [inside]
    bufferOffset = _serializer.bool(obj.inside, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointInPolygon2DResponse
    let len;
    let data = new PointInPolygon2DResponse(null);
    // Deserialize message field [inside]
    data.inside = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_shapely/PointInPolygon2DResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75882d15899216b13902c79c5125f8fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Whether the point is inside the polygon
    bool inside
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointInPolygon2DResponse(null);
    if (msg.inside !== undefined) {
      resolved.inside = msg.inside;
    }
    else {
      resolved.inside = false
    }

    return resolved;
    }
};

module.exports = {
  Request: PointInPolygon2DRequest,
  Response: PointInPolygon2DResponse,
  md5sum() { return '76bc48be6593836043514f12c05ab698'; },
  datatype() { return 'lasr_shapely/PointInPolygon2D'; }
};
