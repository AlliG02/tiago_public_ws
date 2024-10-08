// Generated by gencpp from file lasr_dialogflow/DialogflowAudioRequest.msg
// DO NOT EDIT!


#ifndef LASR_DIALOGFLOW_MESSAGE_DIALOGFLOWAUDIOREQUEST_H
#define LASR_DIALOGFLOW_MESSAGE_DIALOGFLOWAUDIOREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>
#include <std_msgs/String.h>

namespace lasr_dialogflow
{
template <class ContainerAllocator>
struct DialogflowAudioRequest_
{
  typedef DialogflowAudioRequest_<ContainerAllocator> Type;

  DialogflowAudioRequest_()
    : task()
    , action()  {
    }
  DialogflowAudioRequest_(const ContainerAllocator& _alloc)
    : task(_alloc)
    , action(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _task_type;
  _task_type task;

   typedef  ::std_msgs::String_<ContainerAllocator>  _action_type;
  _action_type action;





  typedef boost::shared_ptr< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DialogflowAudioRequest_

typedef ::lasr_dialogflow::DialogflowAudioRequest_<std::allocator<void> > DialogflowAudioRequest;

typedef boost::shared_ptr< ::lasr_dialogflow::DialogflowAudioRequest > DialogflowAudioRequestPtr;
typedef boost::shared_ptr< ::lasr_dialogflow::DialogflowAudioRequest const> DialogflowAudioRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator1> & lhs, const ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator2> & rhs)
{
  return lhs.task == rhs.task &&
    lhs.action == rhs.action;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator1> & lhs, const ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lasr_dialogflow

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f44d0e40ce4590eaca17b20f89c9ede5";
  }

  static const char* value(const ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf44d0e40ce4590eaULL;
  static const uint64_t static_value2 = 0xca17b20f89c9ede5ULL;
};

template<class ContainerAllocator>
struct DataType< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lasr_dialogflow/DialogflowAudioRequest";
  }

  static const char* value(const ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/String task\n"
"std_msgs/String action\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task);
      stream.next(m.action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DialogflowAudioRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lasr_dialogflow::DialogflowAudioRequest_<ContainerAllocator>& v)
  {
    s << indent << "task: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.task);
    s << indent << "action: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.action);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LASR_DIALOGFLOW_MESSAGE_DIALOGFLOWAUDIOREQUEST_H
