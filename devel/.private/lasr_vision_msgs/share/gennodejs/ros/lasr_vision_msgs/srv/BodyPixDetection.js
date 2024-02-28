// Auto-generated. Do not edit!

// (in-package lasr_vision_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BodyPixMaskRequest = require('../msg/BodyPixMaskRequest.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let BodyPixMask = require('../msg/BodyPixMask.js');
let BodyPixPose = require('../msg/BodyPixPose.js');

//-----------------------------------------------------------

class BodyPixDetectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_raw = null;
      this.dataset = null;
      this.confidence = null;
      this.masks = null;
    }
    else {
      if (initObj.hasOwnProperty('image_raw')) {
        this.image_raw = initObj.image_raw
      }
      else {
        this.image_raw = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('dataset')) {
        this.dataset = initObj.dataset
      }
      else {
        this.dataset = '';
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('masks')) {
        this.masks = initObj.masks
      }
      else {
        this.masks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BodyPixDetectionRequest
    // Serialize message field [image_raw]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image_raw, buffer, bufferOffset);
    // Serialize message field [dataset]
    bufferOffset = _serializer.string(obj.dataset, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [masks]
    // Serialize the length for message field [masks]
    bufferOffset = _serializer.uint32(obj.masks.length, buffer, bufferOffset);
    obj.masks.forEach((val) => {
      bufferOffset = BodyPixMaskRequest.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BodyPixDetectionRequest
    let len;
    let data = new BodyPixDetectionRequest(null);
    // Deserialize message field [image_raw]
    data.image_raw = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [dataset]
    data.dataset = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [masks]
    // Deserialize array length for message field [masks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.masks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.masks[i] = BodyPixMaskRequest.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image_raw);
    length += _getByteLength(object.dataset);
    object.masks.forEach((val) => {
      length += BodyPixMaskRequest.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_vision_msgs/BodyPixDetectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbc0215bb0b3966a6ab8ff384faf7972';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Image to run inference on
    sensor_msgs/Image image_raw
    
    # BodyPix model to use
    string dataset
    
    # How certain the detection should be to include
    float32 confidence
    
    # The masks that should be generated
    lasr_vision_msgs/BodyPixMaskRequest[] masks
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    MSG: lasr_vision_msgs/BodyPixMaskRequest
    # List of parts
    #
    # A full list is available here:
    # https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/part_channels.py#L5
    string[] parts
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BodyPixDetectionRequest(null);
    if (msg.image_raw !== undefined) {
      resolved.image_raw = sensor_msgs.msg.Image.Resolve(msg.image_raw)
    }
    else {
      resolved.image_raw = new sensor_msgs.msg.Image()
    }

    if (msg.dataset !== undefined) {
      resolved.dataset = msg.dataset;
    }
    else {
      resolved.dataset = ''
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.masks !== undefined) {
      resolved.masks = new Array(msg.masks.length);
      for (let i = 0; i < resolved.masks.length; ++i) {
        resolved.masks[i] = BodyPixMaskRequest.Resolve(msg.masks[i]);
      }
    }
    else {
      resolved.masks = []
    }

    return resolved;
    }
};

class BodyPixDetectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.masks = null;
      this.poses = null;
    }
    else {
      if (initObj.hasOwnProperty('masks')) {
        this.masks = initObj.masks
      }
      else {
        this.masks = [];
      }
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BodyPixDetectionResponse
    // Serialize message field [masks]
    // Serialize the length for message field [masks]
    bufferOffset = _serializer.uint32(obj.masks.length, buffer, bufferOffset);
    obj.masks.forEach((val) => {
      bufferOffset = BodyPixMask.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [poses]
    // Serialize the length for message field [poses]
    bufferOffset = _serializer.uint32(obj.poses.length, buffer, bufferOffset);
    obj.poses.forEach((val) => {
      bufferOffset = BodyPixPose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BodyPixDetectionResponse
    let len;
    let data = new BodyPixDetectionResponse(null);
    // Deserialize message field [masks]
    // Deserialize array length for message field [masks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.masks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.masks[i] = BodyPixMask.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [poses]
    // Deserialize array length for message field [poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poses[i] = BodyPixPose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.masks.forEach((val) => {
      length += BodyPixMask.getMessageSize(val);
    });
    length += 0 * object.poses.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_vision_msgs/BodyPixDetectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7748b1e80932ee8c80a3152221ccdbd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Generated masks
    lasr_vision_msgs/BodyPixMask[] masks
    
    # Pose information
    lasr_vision_msgs/BodyPixPose[] poses
    
    
    ================================================================================
    MSG: lasr_vision_msgs/BodyPixMask
    # 1D array of mask
    bool[] mask
    
    # Shape
    #
    # Use in mask.reshape(...shape) to get back 2D array of mask
    uint32[] shape
    
    ================================================================================
    MSG: lasr_vision_msgs/BodyPixPose
    # https://github.com/de-code/python-tf-bodypix/blob/develop/tf_bodypix/bodypix_js_utils/types.py
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BodyPixDetectionResponse(null);
    if (msg.masks !== undefined) {
      resolved.masks = new Array(msg.masks.length);
      for (let i = 0; i < resolved.masks.length; ++i) {
        resolved.masks[i] = BodyPixMask.Resolve(msg.masks[i]);
      }
    }
    else {
      resolved.masks = []
    }

    if (msg.poses !== undefined) {
      resolved.poses = new Array(msg.poses.length);
      for (let i = 0; i < resolved.poses.length; ++i) {
        resolved.poses[i] = BodyPixPose.Resolve(msg.poses[i]);
      }
    }
    else {
      resolved.poses = []
    }

    return resolved;
    }
};

module.exports = {
  Request: BodyPixDetectionRequest,
  Response: BodyPixDetectionResponse,
  md5sum() { return '1aab0085097b15bd22e0c25c6a47130a'; },
  datatype() { return 'lasr_vision_msgs/BodyPixDetection'; }
};
