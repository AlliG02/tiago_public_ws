// Auto-generated. Do not edit!

// (in-package tf_module.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class BaseTransformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.frame = null;
      this.target_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('target_frame')) {
        this.target_frame = initObj.target_frame
      }
      else {
        this.target_frame = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaseTransformRequest
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [frame]
    bufferOffset = std_msgs.msg.String.serialize(obj.frame, buffer, bufferOffset);
    // Serialize message field [target_frame]
    bufferOffset = std_msgs.msg.String.serialize(obj.target_frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaseTransformRequest
    let len;
    let data = new BaseTransformRequest(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [frame]
    data.frame = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_frame]
    data.target_frame = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points.length;
    length += std_msgs.msg.String.getMessageSize(object.frame);
    length += std_msgs.msg.String.getMessageSize(object.target_frame);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tf_module/BaseTransformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00bd9f6f9309508c982617f183a10fb4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[]         points          # point we want to transform
    std_msgs/String               frame           # the frame of the point
    std_msgs/String               target_frame    # the frame we want to transform the point to
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new BaseTransformRequest(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.frame !== undefined) {
      resolved.frame = std_msgs.msg.String.Resolve(msg.frame)
    }
    else {
      resolved.frame = new std_msgs.msg.String()
    }

    if (msg.target_frame !== undefined) {
      resolved.target_frame = std_msgs.msg.String.Resolve(msg.target_frame)
    }
    else {
      resolved.target_frame = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class BaseTransformResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_points = null;
    }
    else {
      if (initObj.hasOwnProperty('new_points')) {
        this.new_points = initObj.new_points
      }
      else {
        this.new_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaseTransformResponse
    // Serialize message field [new_points]
    // Serialize the length for message field [new_points]
    bufferOffset = _serializer.uint32(obj.new_points.length, buffer, bufferOffset);
    obj.new_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PointStamped.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaseTransformResponse
    let len;
    let data = new BaseTransformResponse(null);
    // Deserialize message field [new_points]
    // Deserialize array length for message field [new_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.new_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.new_points[i] = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.new_points.forEach((val) => {
      length += geometry_msgs.msg.PointStamped.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tf_module/BaseTransformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f506729f2e47b07dba1cf7734b6fba21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PointStamped[]  new_points      # the transformed point
    
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new BaseTransformResponse(null);
    if (msg.new_points !== undefined) {
      resolved.new_points = new Array(msg.new_points.length);
      for (let i = 0; i < resolved.new_points.length; ++i) {
        resolved.new_points[i] = geometry_msgs.msg.PointStamped.Resolve(msg.new_points[i]);
      }
    }
    else {
      resolved.new_points = []
    }

    return resolved;
    }
};

module.exports = {
  Request: BaseTransformRequest,
  Response: BaseTransformResponse,
  md5sum() { return 'e34396cb6a4d6ca05fcd61fe22fd3a11'; },
  datatype() { return 'tf_module/BaseTransform'; }
};
