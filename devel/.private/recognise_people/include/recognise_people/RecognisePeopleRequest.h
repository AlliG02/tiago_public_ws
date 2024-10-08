// Generated by gencpp from file recognise_people/RecognisePeopleRequest.msg
// DO NOT EDIT!


#ifndef RECOGNISE_PEOPLE_MESSAGE_RECOGNISEPEOPLEREQUEST_H
#define RECOGNISE_PEOPLE_MESSAGE_RECOGNISEPEOPLEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lasr_vision_msgs/Detection.h>
#include <lasr_vision_msgs/Detection.h>

namespace recognise_people
{
template <class ContainerAllocator>
struct RecognisePeopleRequest_
{
  typedef RecognisePeopleRequest_<ContainerAllocator> Type;

  RecognisePeopleRequest_()
    : detected_objects_yolo()
    , detected_objects_opencv()  {
    }
  RecognisePeopleRequest_(const ContainerAllocator& _alloc)
    : detected_objects_yolo(_alloc)
    , detected_objects_opencv(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::lasr_vision_msgs::Detection_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::lasr_vision_msgs::Detection_<ContainerAllocator> >> _detected_objects_yolo_type;
  _detected_objects_yolo_type detected_objects_yolo;

   typedef std::vector< ::lasr_vision_msgs::Detection_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::lasr_vision_msgs::Detection_<ContainerAllocator> >> _detected_objects_opencv_type;
  _detected_objects_opencv_type detected_objects_opencv;





  typedef boost::shared_ptr< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RecognisePeopleRequest_

typedef ::recognise_people::RecognisePeopleRequest_<std::allocator<void> > RecognisePeopleRequest;

typedef boost::shared_ptr< ::recognise_people::RecognisePeopleRequest > RecognisePeopleRequestPtr;
typedef boost::shared_ptr< ::recognise_people::RecognisePeopleRequest const> RecognisePeopleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::recognise_people::RecognisePeopleRequest_<ContainerAllocator1> & lhs, const ::recognise_people::RecognisePeopleRequest_<ContainerAllocator2> & rhs)
{
  return lhs.detected_objects_yolo == rhs.detected_objects_yolo &&
    lhs.detected_objects_opencv == rhs.detected_objects_opencv;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::recognise_people::RecognisePeopleRequest_<ContainerAllocator1> & lhs, const ::recognise_people::RecognisePeopleRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace recognise_people

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ea5d56b37182c66f603bfada2c759974";
  }

  static const char* value(const ::recognise_people::RecognisePeopleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xea5d56b37182c66fULL;
  static const uint64_t static_value2 = 0x603bfada2c759974ULL;
};

template<class ContainerAllocator>
struct DataType< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "recognise_people/RecognisePeopleRequest";
  }

  static const char* value(const ::recognise_people::RecognisePeopleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lasr_vision_msgs/Detection[] detected_objects_yolo\n"
"lasr_vision_msgs/Detection[] detected_objects_opencv\n"
"\n"
"================================================================================\n"
"MSG: lasr_vision_msgs/Detection\n"
"# Detected Object Class\n"
"string name\n"
"\n"
"# How certain we are this is what we think it is\n"
"float32 confidence\n"
"\n"
"# Bounding box mask defined in pixel-space\n"
"int32[] xywh\n"
"\n"
"# Segmentation mask defined in pixel-space\n"
"#\n"
"# This will be empty if a segmentation model was not used\n"
"int32[] xyseg\n"
;
  }

  static const char* value(const ::recognise_people::RecognisePeopleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.detected_objects_yolo);
      stream.next(m.detected_objects_opencv);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RecognisePeopleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::recognise_people::RecognisePeopleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::recognise_people::RecognisePeopleRequest_<ContainerAllocator>& v)
  {
    s << indent << "detected_objects_yolo[]" << std::endl;
    for (size_t i = 0; i < v.detected_objects_yolo.size(); ++i)
    {
      s << indent << "  detected_objects_yolo[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lasr_vision_msgs::Detection_<ContainerAllocator> >::stream(s, indent + "    ", v.detected_objects_yolo[i]);
    }
    s << indent << "detected_objects_opencv[]" << std::endl;
    for (size_t i = 0; i < v.detected_objects_opencv.size(); ++i)
    {
      s << indent << "  detected_objects_opencv[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lasr_vision_msgs::Detection_<ContainerAllocator> >::stream(s, indent + "    ", v.detected_objects_opencv[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RECOGNISE_PEOPLE_MESSAGE_RECOGNISEPEOPLEREQUEST_H
