// Generated by gencpp from file lasr_vision_msgs/ColourPrediction.msg
// DO NOT EDIT!


#ifndef LASR_VISION_MSGS_MESSAGE_COLOURPREDICTION_H
#define LASR_VISION_MSGS_MESSAGE_COLOURPREDICTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lasr_vision_msgs
{
template <class ContainerAllocator>
struct ColourPrediction_
{
  typedef ColourPrediction_<ContainerAllocator> Type;

  ColourPrediction_()
    : colour()
    , distance(0.0)  {
    }
  ColourPrediction_(const ContainerAllocator& _alloc)
    : colour(_alloc)
    , distance(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _colour_type;
  _colour_type colour;

   typedef float _distance_type;
  _distance_type distance;





  typedef boost::shared_ptr< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> const> ConstPtr;

}; // struct ColourPrediction_

typedef ::lasr_vision_msgs::ColourPrediction_<std::allocator<void> > ColourPrediction;

typedef boost::shared_ptr< ::lasr_vision_msgs::ColourPrediction > ColourPredictionPtr;
typedef boost::shared_ptr< ::lasr_vision_msgs::ColourPrediction const> ColourPredictionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator1> & lhs, const ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator2> & rhs)
{
  return lhs.colour == rhs.colour &&
    lhs.distance == rhs.distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator1> & lhs, const ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lasr_vision_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "15992d44b8e8edf9dc8c9010c5b9d91c";
  }

  static const char* value(const ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x15992d44b8e8edf9ULL;
  static const uint64_t static_value2 = 0xdc8c9010c5b9d91cULL;
};

template<class ContainerAllocator>
struct DataType< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lasr_vision_msgs/ColourPrediction";
  }

  static const char* value(const ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Colour\n"
"string colour\n"
"\n"
"# Distance to the colour\n"
"#\n"
"# Lower = higher chance\n"
"float32 distance\n"
;
  }

  static const char* value(const ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.colour);
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ColourPrediction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lasr_vision_msgs::ColourPrediction_<ContainerAllocator>& v)
  {
    s << indent << "colour: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.colour);
    s << indent << "distance: ";
    Printer<float>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LASR_VISION_MSGS_MESSAGE_COLOURPREDICTION_H
