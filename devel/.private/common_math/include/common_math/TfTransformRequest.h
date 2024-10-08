// Generated by gencpp from file common_math/TfTransformRequest.msg
// DO NOT EDIT!


#ifndef COMMON_MATH_MESSAGE_TFTRANSFORMREQUEST_H
#define COMMON_MATH_MESSAGE_TFTRANSFORMREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseArray.h>
#include <sensor_msgs/PointCloud2.h>
#include <geometry_msgs/PointStamped.h>
#include <std_msgs/String.h>

namespace common_math
{
template <class ContainerAllocator>
struct TfTransformRequest_
{
  typedef TfTransformRequest_<ContainerAllocator> Type;

  TfTransformRequest_()
    : pose_array()
    , pointcloud()
    , point()
    , target_frame()  {
    }
  TfTransformRequest_(const ContainerAllocator& _alloc)
    : pose_array(_alloc)
    , pointcloud(_alloc)
    , point(_alloc)
    , target_frame(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseArray_<ContainerAllocator>  _pose_array_type;
  _pose_array_type pose_array;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _pointcloud_type;
  _pointcloud_type pointcloud;

   typedef  ::geometry_msgs::PointStamped_<ContainerAllocator>  _point_type;
  _point_type point;

   typedef  ::std_msgs::String_<ContainerAllocator>  _target_frame_type;
  _target_frame_type target_frame;





  typedef boost::shared_ptr< ::common_math::TfTransformRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::common_math::TfTransformRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TfTransformRequest_

typedef ::common_math::TfTransformRequest_<std::allocator<void> > TfTransformRequest;

typedef boost::shared_ptr< ::common_math::TfTransformRequest > TfTransformRequestPtr;
typedef boost::shared_ptr< ::common_math::TfTransformRequest const> TfTransformRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::common_math::TfTransformRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::common_math::TfTransformRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::common_math::TfTransformRequest_<ContainerAllocator1> & lhs, const ::common_math::TfTransformRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pose_array == rhs.pose_array &&
    lhs.pointcloud == rhs.pointcloud &&
    lhs.point == rhs.point &&
    lhs.target_frame == rhs.target_frame;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::common_math::TfTransformRequest_<ContainerAllocator1> & lhs, const ::common_math::TfTransformRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace common_math

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::common_math::TfTransformRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_math::TfTransformRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::common_math::TfTransformRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::common_math::TfTransformRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_math::TfTransformRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_math::TfTransformRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::common_math::TfTransformRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1572ffcfe8776f9a1cf11c388d5f7ac9";
  }

  static const char* value(const ::common_math::TfTransformRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1572ffcfe8776f9aULL;
  static const uint64_t static_value2 = 0x1cf11c388d5f7ac9ULL;
};

template<class ContainerAllocator>
struct DataType< ::common_math::TfTransformRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "common_math/TfTransformRequest";
  }

  static const char* value(const ::common_math::TfTransformRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::common_math::TfTransformRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseArray pose_array\n"
"sensor_msgs/PointCloud2 pointcloud\n"
"geometry_msgs/PointStamped point\n"
"std_msgs/String target_frame\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseArray\n"
"# An array of poses with a header for global reference.\n"
"\n"
"Header header\n"
"\n"
"Pose[] poses\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PointStamped\n"
"# This represents a Point with reference coordinate frame and timestamp\n"
"Header header\n"
"Point point\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::common_math::TfTransformRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::common_math::TfTransformRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose_array);
      stream.next(m.pointcloud);
      stream.next(m.point);
      stream.next(m.target_frame);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TfTransformRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::common_math::TfTransformRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::common_math::TfTransformRequest_<ContainerAllocator>& v)
  {
    s << indent << "pose_array: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseArray_<ContainerAllocator> >::stream(s, indent + "  ", v.pose_array);
    s << indent << "pointcloud: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.pointcloud);
    s << indent << "point: ";
    s << std::endl;
    Printer< ::geometry_msgs::PointStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
    s << indent << "target_frame: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.target_frame);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMMON_MATH_MESSAGE_TFTRANSFORMREQUEST_H
