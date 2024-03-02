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

class PointsInPolygon2DRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.polygon = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = [];
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointsInPolygon2DRequest
    // Serialize message field [polygon]
    bufferOffset = _arraySerializer.float32(obj.polygon, buffer, bufferOffset, null);
    // Serialize message field [points]
    bufferOffset = _arraySerializer.float32(obj.points, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointsInPolygon2DRequest
    let len;
    let data = new PointsInPolygon2DRequest(null);
    // Deserialize message field [polygon]
    data.polygon = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points]
    data.points = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.polygon.length;
    length += 4 * object.points.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_shapely/PointsInPolygon2DRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6ff8b332b345b715cefe1aeadd95cef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 1D-array of ordered pairs of points (connected by edge) that define the polygon
    float32[] polygon
    # 1D-array of pairs of points
    float32[] points
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointsInPolygon2DRequest(null);
    if (msg.polygon !== undefined) {
      resolved.polygon = msg.polygon;
    }
    else {
      resolved.polygon = []
    }

    if (msg.points !== undefined) {
      resolved.points = msg.points;
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

class PointsInPolygon2DResponse {
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
        this.inside = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointsInPolygon2DResponse
    // Serialize message field [inside]
    bufferOffset = _arraySerializer.bool(obj.inside, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointsInPolygon2DResponse
    let len;
    let data = new PointsInPolygon2DResponse(null);
    // Deserialize message field [inside]
    data.inside = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.inside.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_shapely/PointsInPolygon2DResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bce14a16b101403b12adc74c11d16b8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Whether the points are inside the polygon
    bool[] inside
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointsInPolygon2DResponse(null);
    if (msg.inside !== undefined) {
      resolved.inside = msg.inside;
    }
    else {
      resolved.inside = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PointsInPolygon2DRequest,
  Response: PointsInPolygon2DResponse,
  md5sum() { return '839dd681ef3f1c414d3202b24dd84813'; },
  datatype() { return 'lasr_shapely/PointsInPolygon2D'; }
};
