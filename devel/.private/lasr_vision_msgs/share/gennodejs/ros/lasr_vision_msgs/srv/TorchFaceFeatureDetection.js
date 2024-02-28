// Auto-generated. Do not edit!

// (in-package lasr_vision_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let FeatureWithColour = require('../msg/FeatureWithColour.js');

//-----------------------------------------------------------

class TorchFaceFeatureDetectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_raw = null;
    }
    else {
      if (initObj.hasOwnProperty('image_raw')) {
        this.image_raw = initObj.image_raw
      }
      else {
        this.image_raw = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TorchFaceFeatureDetectionRequest
    // Serialize message field [image_raw]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image_raw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TorchFaceFeatureDetectionRequest
    let len;
    let data = new TorchFaceFeatureDetectionRequest(null);
    // Deserialize message field [image_raw]
    data.image_raw = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image_raw);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_vision_msgs/TorchFaceFeatureDetectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cc2871aa67733f0f532f04e505ef0dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Image to run inference on
    sensor_msgs/Image image_raw
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TorchFaceFeatureDetectionRequest(null);
    if (msg.image_raw !== undefined) {
      resolved.image_raw = sensor_msgs.msg.Image.Resolve(msg.image_raw)
    }
    else {
      resolved.image_raw = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

class TorchFaceFeatureDetectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detected_features = null;
    }
    else {
      if (initObj.hasOwnProperty('detected_features')) {
        this.detected_features = initObj.detected_features
      }
      else {
        this.detected_features = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TorchFaceFeatureDetectionResponse
    // Serialize message field [detected_features]
    // Serialize the length for message field [detected_features]
    bufferOffset = _serializer.uint32(obj.detected_features.length, buffer, bufferOffset);
    obj.detected_features.forEach((val) => {
      bufferOffset = FeatureWithColour.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TorchFaceFeatureDetectionResponse
    let len;
    let data = new TorchFaceFeatureDetectionResponse(null);
    // Deserialize message field [detected_features]
    // Deserialize array length for message field [detected_features]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected_features = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected_features[i] = FeatureWithColour.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.detected_features.forEach((val) => {
      length += FeatureWithColour.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_vision_msgs/TorchFaceFeatureDetectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b8734399f8e07460a1ef861a79538d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Detection result
    lasr_vision_msgs/FeatureWithColour[] detected_features
    
    ================================================================================
    MSG: lasr_vision_msgs/FeatureWithColour
    # Feature name
    string name
    
    # Colour predictions
    lasr_vision_msgs/ColourPrediction[] colours
    
    ================================================================================
    MSG: lasr_vision_msgs/ColourPrediction
    # Colour
    string colour
    
    # Distance to the colour
    #
    # Lower = higher chance
    float32 distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TorchFaceFeatureDetectionResponse(null);
    if (msg.detected_features !== undefined) {
      resolved.detected_features = new Array(msg.detected_features.length);
      for (let i = 0; i < resolved.detected_features.length; ++i) {
        resolved.detected_features[i] = FeatureWithColour.Resolve(msg.detected_features[i]);
      }
    }
    else {
      resolved.detected_features = []
    }

    return resolved;
    }
};

module.exports = {
  Request: TorchFaceFeatureDetectionRequest,
  Response: TorchFaceFeatureDetectionResponse,
  md5sum() { return '71d0419cc4eccd880efd242219ef83a4'; },
  datatype() { return 'lasr_vision_msgs/TorchFaceFeatureDetection'; }
};
