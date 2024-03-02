// Auto-generated. Do not edit!

// (in-package graph_room_navigation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddCrossingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.room1 = null;
      this.door1 = null;
      this.room2 = null;
      this.door2 = null;
    }
    else {
      if (initObj.hasOwnProperty('room1')) {
        this.room1 = initObj.room1
      }
      else {
        this.room1 = '';
      }
      if (initObj.hasOwnProperty('door1')) {
        this.door1 = initObj.door1
      }
      else {
        this.door1 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('room2')) {
        this.room2 = initObj.room2
      }
      else {
        this.room2 = '';
      }
      if (initObj.hasOwnProperty('door2')) {
        this.door2 = initObj.door2
      }
      else {
        this.door2 = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddCrossingRequest
    // Serialize message field [room1]
    bufferOffset = _serializer.string(obj.room1, buffer, bufferOffset);
    // Serialize message field [door1]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.door1, buffer, bufferOffset);
    // Serialize message field [room2]
    bufferOffset = _serializer.string(obj.room2, buffer, bufferOffset);
    // Serialize message field [door2]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.door2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddCrossingRequest
    let len;
    let data = new AddCrossingRequest(null);
    // Deserialize message field [room1]
    data.room1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [door1]
    data.door1 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [room2]
    data.room2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [door2]
    data.door2 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.room1);
    length += _getByteLength(object.room2);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graph_room_navigation/AddCrossingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38eeb2ed3fb02672bfd82cd339bd4d74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string room1
    geometry_msgs/Point door1
    string room2
    geometry_msgs/Point door2
    
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
    const resolved = new AddCrossingRequest(null);
    if (msg.room1 !== undefined) {
      resolved.room1 = msg.room1;
    }
    else {
      resolved.room1 = ''
    }

    if (msg.door1 !== undefined) {
      resolved.door1 = geometry_msgs.msg.Point.Resolve(msg.door1)
    }
    else {
      resolved.door1 = new geometry_msgs.msg.Point()
    }

    if (msg.room2 !== undefined) {
      resolved.room2 = msg.room2;
    }
    else {
      resolved.room2 = ''
    }

    if (msg.door2 !== undefined) {
      resolved.door2 = geometry_msgs.msg.Point.Resolve(msg.door2)
    }
    else {
      resolved.door2 = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class AddCrossingResponse {
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
    // Serializes a message object of type AddCrossingResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddCrossingResponse
    let len;
    let data = new AddCrossingResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graph_room_navigation/AddCrossingResponse';
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
    const resolved = new AddCrossingResponse(null);
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
  Request: AddCrossingRequest,
  Response: AddCrossingResponse,
  md5sum() { return 'dc1dde44f0b634a483bc0645dd3270ce'; },
  datatype() { return 'graph_room_navigation/AddCrossing'; }
};
