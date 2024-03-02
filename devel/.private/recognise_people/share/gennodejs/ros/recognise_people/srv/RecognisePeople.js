// Auto-generated. Do not edit!

// (in-package recognise_people.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let lasr_vision_msgs = _finder('lasr_vision_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RecognisePeopleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detected_objects_yolo = null;
      this.detected_objects_opencv = null;
    }
    else {
      if (initObj.hasOwnProperty('detected_objects_yolo')) {
        this.detected_objects_yolo = initObj.detected_objects_yolo
      }
      else {
        this.detected_objects_yolo = [];
      }
      if (initObj.hasOwnProperty('detected_objects_opencv')) {
        this.detected_objects_opencv = initObj.detected_objects_opencv
      }
      else {
        this.detected_objects_opencv = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognisePeopleRequest
    // Serialize message field [detected_objects_yolo]
    // Serialize the length for message field [detected_objects_yolo]
    bufferOffset = _serializer.uint32(obj.detected_objects_yolo.length, buffer, bufferOffset);
    obj.detected_objects_yolo.forEach((val) => {
      bufferOffset = lasr_vision_msgs.msg.Detection.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [detected_objects_opencv]
    // Serialize the length for message field [detected_objects_opencv]
    bufferOffset = _serializer.uint32(obj.detected_objects_opencv.length, buffer, bufferOffset);
    obj.detected_objects_opencv.forEach((val) => {
      bufferOffset = lasr_vision_msgs.msg.Detection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognisePeopleRequest
    let len;
    let data = new RecognisePeopleRequest(null);
    // Deserialize message field [detected_objects_yolo]
    // Deserialize array length for message field [detected_objects_yolo]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected_objects_yolo = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected_objects_yolo[i] = lasr_vision_msgs.msg.Detection.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [detected_objects_opencv]
    // Deserialize array length for message field [detected_objects_opencv]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected_objects_opencv = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected_objects_opencv[i] = lasr_vision_msgs.msg.Detection.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.detected_objects_yolo.forEach((val) => {
      length += lasr_vision_msgs.msg.Detection.getMessageSize(val);
    });
    object.detected_objects_opencv.forEach((val) => {
      length += lasr_vision_msgs.msg.Detection.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recognise_people/RecognisePeopleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea5d56b37182c66f603bfada2c759974';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lasr_vision_msgs/Detection[] detected_objects_yolo
    lasr_vision_msgs/Detection[] detected_objects_opencv
    
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
    const resolved = new RecognisePeopleRequest(null);
    if (msg.detected_objects_yolo !== undefined) {
      resolved.detected_objects_yolo = new Array(msg.detected_objects_yolo.length);
      for (let i = 0; i < resolved.detected_objects_yolo.length; ++i) {
        resolved.detected_objects_yolo[i] = lasr_vision_msgs.msg.Detection.Resolve(msg.detected_objects_yolo[i]);
      }
    }
    else {
      resolved.detected_objects_yolo = []
    }

    if (msg.detected_objects_opencv !== undefined) {
      resolved.detected_objects_opencv = new Array(msg.detected_objects_opencv.length);
      for (let i = 0; i < resolved.detected_objects_opencv.length; ++i) {
        resolved.detected_objects_opencv[i] = lasr_vision_msgs.msg.Detection.Resolve(msg.detected_objects_opencv[i]);
      }
    }
    else {
      resolved.detected_objects_opencv = []
    }

    return resolved;
    }
};

class RecognisePeopleResponse {
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
    // Serializes a message object of type RecognisePeopleResponse
    // Serialize message field [detected_objects]
    // Serialize the length for message field [detected_objects]
    bufferOffset = _serializer.uint32(obj.detected_objects.length, buffer, bufferOffset);
    obj.detected_objects.forEach((val) => {
      bufferOffset = lasr_vision_msgs.msg.Detection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognisePeopleResponse
    let len;
    let data = new RecognisePeopleResponse(null);
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
    return 'recognise_people/RecognisePeopleResponse';
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
    const resolved = new RecognisePeopleResponse(null);
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
  Request: RecognisePeopleRequest,
  Response: RecognisePeopleResponse,
  md5sum() { return '40b5b9f7809abcf08ebde54fe0c7412f'; },
  datatype() { return 'recognise_people/RecognisePeople'; }
};
