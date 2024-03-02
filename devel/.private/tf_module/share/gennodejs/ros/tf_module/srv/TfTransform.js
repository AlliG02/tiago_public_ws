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
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TfTransformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_array = null;
      this.pointcloud = null;
      this.point = null;
      this.target_frame = null;
      this.source_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_array')) {
        this.pose_array = initObj.pose_array
      }
      else {
        this.pose_array = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('pointcloud')) {
        this.pointcloud = initObj.pointcloud
      }
      else {
        this.pointcloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('target_frame')) {
        this.target_frame = initObj.target_frame
      }
      else {
        this.target_frame = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('source_frame')) {
        this.source_frame = initObj.source_frame
      }
      else {
        this.source_frame = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TfTransformRequest
    // Serialize message field [pose_array]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.pose_array, buffer, bufferOffset);
    // Serialize message field [pointcloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.pointcloud, buffer, bufferOffset);
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [target_frame]
    bufferOffset = std_msgs.msg.String.serialize(obj.target_frame, buffer, bufferOffset);
    // Serialize message field [source_frame]
    bufferOffset = std_msgs.msg.String.serialize(obj.source_frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TfTransformRequest
    let len;
    let data = new TfTransformRequest(null);
    // Deserialize message field [pose_array]
    data.pose_array = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [pointcloud]
    data.pointcloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_frame]
    data.target_frame = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [source_frame]
    data.source_frame = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.pose_array);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.pointcloud);
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.point);
    length += std_msgs.msg.String.getMessageSize(object.target_frame);
    length += std_msgs.msg.String.getMessageSize(object.source_frame);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tf_module/TfTransformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6df4b6dbe70cafa2e34e5608bfdcf7ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseArray pose_array
    sensor_msgs/PointCloud2 pointcloud
    geometry_msgs/PointStamped point
    std_msgs/String target_frame
    std_msgs/String source_frame
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
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
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
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
    const resolved = new TfTransformRequest(null);
    if (msg.pose_array !== undefined) {
      resolved.pose_array = geometry_msgs.msg.PoseArray.Resolve(msg.pose_array)
    }
    else {
      resolved.pose_array = new geometry_msgs.msg.PoseArray()
    }

    if (msg.pointcloud !== undefined) {
      resolved.pointcloud = sensor_msgs.msg.PointCloud2.Resolve(msg.pointcloud)
    }
    else {
      resolved.pointcloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.PointStamped.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.PointStamped()
    }

    if (msg.target_frame !== undefined) {
      resolved.target_frame = std_msgs.msg.String.Resolve(msg.target_frame)
    }
    else {
      resolved.target_frame = new std_msgs.msg.String()
    }

    if (msg.source_frame !== undefined) {
      resolved.source_frame = std_msgs.msg.String.Resolve(msg.source_frame)
    }
    else {
      resolved.source_frame = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class TfTransformResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_pose_array = null;
      this.target_pointcloud = null;
      this.target_point = null;
      this.translation_and_rotation = null;
    }
    else {
      if (initObj.hasOwnProperty('target_pose_array')) {
        this.target_pose_array = initObj.target_pose_array
      }
      else {
        this.target_pose_array = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('target_pointcloud')) {
        this.target_pointcloud = initObj.target_pointcloud
      }
      else {
        this.target_pointcloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('target_point')) {
        this.target_point = initObj.target_point
      }
      else {
        this.target_point = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('translation_and_rotation')) {
        this.translation_and_rotation = initObj.translation_and_rotation
      }
      else {
        this.translation_and_rotation = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TfTransformResponse
    // Serialize message field [target_pose_array]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.target_pose_array, buffer, bufferOffset);
    // Serialize message field [target_pointcloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.target_pointcloud, buffer, bufferOffset);
    // Serialize message field [target_point]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.target_point, buffer, bufferOffset);
    // Serialize message field [translation_and_rotation]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.translation_and_rotation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TfTransformResponse
    let len;
    let data = new TfTransformResponse(null);
    // Deserialize message field [target_pose_array]
    data.target_pose_array = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_pointcloud]
    data.target_pointcloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_point]
    data.target_point = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [translation_and_rotation]
    data.translation_and_rotation = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.target_pose_array);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.target_pointcloud);
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.target_point);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tf_module/TfTransformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9178a83ee8c30ff7fea890b8e766ae7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseArray target_pose_array
    sensor_msgs/PointCloud2 target_pointcloud
    geometry_msgs/PointStamped target_point
    geometry_msgs/Pose translation_and_rotation
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
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
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TfTransformResponse(null);
    if (msg.target_pose_array !== undefined) {
      resolved.target_pose_array = geometry_msgs.msg.PoseArray.Resolve(msg.target_pose_array)
    }
    else {
      resolved.target_pose_array = new geometry_msgs.msg.PoseArray()
    }

    if (msg.target_pointcloud !== undefined) {
      resolved.target_pointcloud = sensor_msgs.msg.PointCloud2.Resolve(msg.target_pointcloud)
    }
    else {
      resolved.target_pointcloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.target_point !== undefined) {
      resolved.target_point = geometry_msgs.msg.PointStamped.Resolve(msg.target_point)
    }
    else {
      resolved.target_point = new geometry_msgs.msg.PointStamped()
    }

    if (msg.translation_and_rotation !== undefined) {
      resolved.translation_and_rotation = geometry_msgs.msg.Pose.Resolve(msg.translation_and_rotation)
    }
    else {
      resolved.translation_and_rotation = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: TfTransformRequest,
  Response: TfTransformResponse,
  md5sum() { return 'e3031e602aea7b277ed3e5a9a7804b9a'; },
  datatype() { return 'tf_module/TfTransform'; }
};
