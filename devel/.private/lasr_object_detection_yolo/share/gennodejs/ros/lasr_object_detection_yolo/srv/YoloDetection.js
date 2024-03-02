// Auto-generated. Do not edit!

// (in-package lasr_object_detection_yolo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let lasr_vision_msgs = _finder('lasr_vision_msgs');

//-----------------------------------------------------------

class YoloDetectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_raw = null;
      this.dataset = null;
      this.confidence = null;
      this.nms = null;
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
      if (initObj.hasOwnProperty('nms')) {
        this.nms = initObj.nms
      }
      else {
        this.nms = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YoloDetectionRequest
    // Serialize message field [image_raw]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image_raw, buffer, bufferOffset);
    // Serialize message field [dataset]
    bufferOffset = _serializer.string(obj.dataset, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [nms]
    bufferOffset = _serializer.float32(obj.nms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YoloDetectionRequest
    let len;
    let data = new YoloDetectionRequest(null);
    // Deserialize message field [image_raw]
    data.image_raw = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [dataset]
    data.dataset = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [nms]
    data.nms = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image_raw);
    length += _getByteLength(object.dataset);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_object_detection_yolo/YoloDetectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4de8906ec1c7e28a771d8bc815eb8ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image image_raw
    string dataset
    float32 confidence
    float32 nms
    
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
    const resolved = new YoloDetectionRequest(null);
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

    if (msg.nms !== undefined) {
      resolved.nms = msg.nms;
    }
    else {
      resolved.nms = 0.0
    }

    return resolved;
    }
};

class YoloDetectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detected_objects = null;
    }
    else {
      if (initObj.hasOwnProperty('detected_objects')) {
        this.detected_objects = initObj.detected_objects
      }
      else {
        this.detected_objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YoloDetectionResponse
    // Serialize message field [detected_objects]
    // Serialize the length for message field [detected_objects]
    bufferOffset = _serializer.uint32(obj.detected_objects.length, buffer, bufferOffset);
    obj.detected_objects.forEach((val) => {
      bufferOffset = lasr_vision_msgs.msg.Detection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YoloDetectionResponse
    let len;
    let data = new YoloDetectionResponse(null);
    // Deserialize message field [detected_objects]
    // Deserialize array length for message field [detected_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected_objects[i] = lasr_vision_msgs.msg.Detection.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.detected_objects.forEach((val) => {
      length += lasr_vision_msgs.msg.Detection.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lasr_object_detection_yolo/YoloDetectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ede9d9587aef5a63081c4a5abc013156';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lasr_vision_msgs/Detection[] detected_objects
    
    ================================================================================
    MSG: lasr_vision_msgs/Detection
    # Detected Object Class
    string name
    
    # How certain we are this is what we think it is
    float32 confidence
    
    # Bounding box mask defined in pixel-space
    int32[] xywh
    
    # Segmentation mask defined in pixel-space
    #
    # This will be empty if a segmentation model was not used
    int32[] xyseg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new YoloDetectionResponse(null);
    if (msg.detected_objects !== undefined) {
      resolved.detected_objects = new Array(msg.detected_objects.length);
      for (let i = 0; i < resolved.detected_objects.length; ++i) {
        resolved.detected_objects[i] = lasr_vision_msgs.msg.Detection.Resolve(msg.detected_objects[i]);
      }
    }
    else {
      resolved.detected_objects = []
    }

    return resolved;
    }
};

module.exports = {
  Request: YoloDetectionRequest,
  Response: YoloDetectionResponse,
  md5sum() { return '3fc722e35ac1e73f453c28f316971286'; },
  datatype() { return 'lasr_object_detection_yolo/YoloDetection'; }
};
