// Auto-generated. Do not edit!

// (in-package tf_module.srv)


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

class ApplyTransformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.transform = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.TransformStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApplyTransformRequest
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.transform, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApplyTransformRequest
    let len;
    let data = new ApplyTransformRequest(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points.length;
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.transform);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tf_module/ApplyTransformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aec84275f0d28f8c86ef5c1b9bdb144';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] points # point we want to transform
    geometry_msgs/TransformStamped transform #the transform we want to use
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
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
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new ApplyTransformRequest(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.TransformStamped.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.TransformStamped()
    }

    return resolved;
    }
};

class ApplyTransformResponse {
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
    // Serializes a message object of type ApplyTransformResponse
    // Serialize message field [new_points]
    // Serialize the length for message field [new_points]
    bufferOffset = _serializer.uint32(obj.new_points.length, buffer, bufferOffset);
    obj.new_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApplyTransformResponse
    let len;
    let data = new ApplyTransformResponse(null);
    // Deserialize message field [new_points]
    // Deserialize array length for message field [new_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.new_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.new_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.new_points.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tf_module/ApplyTransformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36d80c58a30d6cded01579d14324d394';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] new_points # the transformed point
    
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
    const resolved = new ApplyTransformResponse(null);
    if (msg.new_points !== undefined) {
      resolved.new_points = new Array(msg.new_points.length);
      for (let i = 0; i < resolved.new_points.length; ++i) {
        resolved.new_points[i] = geometry_msgs.msg.Point.Resolve(msg.new_points[i]);
      }
    }
    else {
      resolved.new_points = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ApplyTransformRequest,
  Response: ApplyTransformResponse,
  md5sum() { return 'c6933f0498951dc1d2bc762ddd9384e5'; },
  datatype() { return 'tf_module/ApplyTransform'; }
};
