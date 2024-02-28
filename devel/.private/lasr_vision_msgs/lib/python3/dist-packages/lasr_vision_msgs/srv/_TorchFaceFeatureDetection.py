# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lasr_vision_msgs/TorchFaceFeatureDetectionRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import sensor_msgs.msg
import std_msgs.msg

class TorchFaceFeatureDetectionRequest(genpy.Message):
  _md5sum = "6cc2871aa67733f0f532f04e505ef0dd"
  _type = "lasr_vision_msgs/TorchFaceFeatureDetectionRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Image to run inference on
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
"""
  __slots__ = ['image_raw']
  _slot_types = ['sensor_msgs/Image']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       image_raw

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TorchFaceFeatureDetectionRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.image_raw is None:
        self.image_raw = sensor_msgs.msg.Image()
    else:
      self.image_raw = sensor_msgs.msg.Image()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.image_raw.header.seq, _x.image_raw.header.stamp.secs, _x.image_raw.header.stamp.nsecs))
      _x = self.image_raw.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.image_raw.height, _x.image_raw.width))
      _x = self.image_raw.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.image_raw.is_bigendian, _x.image_raw.step))
      _x = self.image_raw.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.image_raw is None:
        self.image_raw = sensor_msgs.msg.Image()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.image_raw.header.seq, _x.image_raw.header.stamp.secs, _x.image_raw.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image_raw.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.image_raw.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.image_raw.height, _x.image_raw.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image_raw.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.image_raw.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.image_raw.is_bigendian, _x.image_raw.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.image_raw.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.image_raw.header.seq, _x.image_raw.header.stamp.secs, _x.image_raw.header.stamp.nsecs))
      _x = self.image_raw.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.image_raw.height, _x.image_raw.width))
      _x = self.image_raw.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.image_raw.is_bigendian, _x.image_raw.step))
      _x = self.image_raw.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.image_raw is None:
        self.image_raw = sensor_msgs.msg.Image()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.image_raw.header.seq, _x.image_raw.header.stamp.secs, _x.image_raw.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image_raw.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.image_raw.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.image_raw.height, _x.image_raw.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image_raw.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.image_raw.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.image_raw.is_bigendian, _x.image_raw.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.image_raw.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_BI = None
def _get_struct_BI():
    global _struct_BI
    if _struct_BI is None:
        _struct_BI = struct.Struct("<BI")
    return _struct_BI
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lasr_vision_msgs/TorchFaceFeatureDetectionResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import lasr_vision_msgs.msg

class TorchFaceFeatureDetectionResponse(genpy.Message):
  _md5sum = "2b8734399f8e07460a1ef861a79538d2"
  _type = "lasr_vision_msgs/TorchFaceFeatureDetectionResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Detection result
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
"""
  __slots__ = ['detected_features']
  _slot_types = ['lasr_vision_msgs/FeatureWithColour[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       detected_features

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TorchFaceFeatureDetectionResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.detected_features is None:
        self.detected_features = []
    else:
      self.detected_features = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.detected_features)
      buff.write(_struct_I.pack(length))
      for val1 in self.detected_features:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.colours)
        buff.write(_struct_I.pack(length))
        for val2 in val1.colours:
          _x = val2.colour
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2.distance
          buff.write(_get_struct_f().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.detected_features is None:
        self.detected_features = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.detected_features = []
      for i in range(0, length):
        val1 = lasr_vision_msgs.msg.FeatureWithColour()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.colours = []
        for i in range(0, length):
          val2 = lasr_vision_msgs.msg.ColourPrediction()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.colour = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.colour = str[start:end]
          start = end
          end += 4
          (val2.distance,) = _get_struct_f().unpack(str[start:end])
          val1.colours.append(val2)
        self.detected_features.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.detected_features)
      buff.write(_struct_I.pack(length))
      for val1 in self.detected_features:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.colours)
        buff.write(_struct_I.pack(length))
        for val2 in val1.colours:
          _x = val2.colour
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2.distance
          buff.write(_get_struct_f().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.detected_features is None:
        self.detected_features = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.detected_features = []
      for i in range(0, length):
        val1 = lasr_vision_msgs.msg.FeatureWithColour()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.colours = []
        for i in range(0, length):
          val2 = lasr_vision_msgs.msg.ColourPrediction()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.colour = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.colour = str[start:end]
          start = end
          end += 4
          (val2.distance,) = _get_struct_f().unpack(str[start:end])
          val1.colours.append(val2)
        self.detected_features.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
class TorchFaceFeatureDetection(object):
  _type          = 'lasr_vision_msgs/TorchFaceFeatureDetection'
  _md5sum = '71d0419cc4eccd880efd242219ef83a4'
  _request_class  = TorchFaceFeatureDetectionRequest
  _response_class = TorchFaceFeatureDetectionResponse
