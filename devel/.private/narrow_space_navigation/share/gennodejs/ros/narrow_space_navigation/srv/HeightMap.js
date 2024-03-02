// Auto-generated. Do not edit!

// (in-package narrow_space_navigation.srv)


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

class HeightMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.warped = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('warped')) {
        this.warped = initObj.warped
      }
      else {
        this.warped = [];
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeightMapRequest
    // Serialize message field [points]
    bufferOffset = _arraySerializer.int32(obj.points, buffer, bufferOffset, null);
    // Serialize message field [warped]
    bufferOffset = _arraySerializer.int32(obj.warped, buffer, bufferOffset, null);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeightMapRequest
    let len;
    let data = new HeightMapRequest(null);
    // Deserialize message field [points]
    data.points = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [warped]
    data.warped = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.points.length;
    length += 4 * object.warped.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'narrow_space_navigation/HeightMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee7fa9c0b1c955d8f4f258e33e8eedc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] points
    int32[] warped
    time timestamp
    # nav_msgs/OccupancyGrid warped
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeightMapRequest(null);
    if (msg.points !== undefined) {
      resolved.points = msg.points;
    }
    else {
      resolved.points = []
    }

    if (msg.warped !== undefined) {
      resolved.warped = msg.warped;
    }
    else {
      resolved.warped = []
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

class HeightMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeightMapResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeightMapResponse
    let len;
    let data = new HeightMapResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a service object
    return 'narrow_space_navigation/HeightMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff1dcc0b039e0fde6d4b36e0302e6f22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status
    geometry_msgs/Pose pose
    
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeightMapResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: HeightMapRequest,
  Response: HeightMapResponse,
  md5sum() { return '27bdf174dd2ab3aff4c8eca33f7ed90f'; },
  datatype() { return 'narrow_space_navigation/HeightMap'; }
};
