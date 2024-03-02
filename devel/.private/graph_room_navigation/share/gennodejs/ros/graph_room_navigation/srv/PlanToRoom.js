// Auto-generated. Do not edit!

// (in-package graph_room_navigation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PlanToRoomRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_room = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_room')) {
        this.goal_room = initObj.goal_room
      }
      else {
        this.goal_room = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanToRoomRequest
    // Serialize message field [goal_room]
    bufferOffset = _serializer.string(obj.goal_room, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanToRoomRequest
    let len;
    let data = new PlanToRoomRequest(null);
    // Deserialize message field [goal_room]
    data.goal_room = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.goal_room);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graph_room_navigation/PlanToRoomRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7fe206b0b01efb97dca5bb2ebd337054';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string goal_room
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanToRoomRequest(null);
    if (msg.goal_room !== undefined) {
      resolved.goal_room = msg.goal_room;
    }
    else {
      resolved.goal_room = ''
    }

    return resolved;
    }
};

class PlanToRoomResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanToRoomResponse
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanToRoomResponse
    let len;
    let data = new PlanToRoomResponse(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graph_room_navigation/PlanToRoomResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '439a0fe22df86319f00b16d4618d7483';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] points
    bool success
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanToRoomResponse(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

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
  Request: PlanToRoomRequest,
  Response: PlanToRoomResponse,
  md5sum() { return 'b848b1c4724a2cc042af92e9bebe0e39'; },
  datatype() { return 'graph_room_navigation/PlanToRoom'; }
};
