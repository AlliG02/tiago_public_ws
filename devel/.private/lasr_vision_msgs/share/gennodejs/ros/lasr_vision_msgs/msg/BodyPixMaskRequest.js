// Auto-generated. Do not edit!

// (in-package lasr_vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BodyPixMaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parts = null;
    }
    else {
      if (initObj.hasOwnProperty('parts')) {
        this.parts = initObj.parts
      }
      else {
        this.parts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BodyPixMaskRequest
    // Serialize message field [parts]
    bufferOffset = _arraySerializer.string(obj.parts, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BodyPixMaskRequest
    let len;
    let data = new BodyPixMaskRequest(null);
    // Deserialize message field [parts]
    data.parts = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.parts.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lasr_vision_msgs/BodyPixMaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61920c0acc31cd7d2b61692a8f73f78b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new BodyPixMaskRequest(null);
    if (msg.parts !== undefined) {
      resolved.parts = msg.parts;
    }
    else {
      resolved.parts = []
    }

    return resolved;
    }
};

module.exports = BodyPixMaskRequest;
