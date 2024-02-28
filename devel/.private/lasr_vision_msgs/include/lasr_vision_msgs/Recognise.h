// Generated by gencpp from file lasr_vision_msgs/Recognise.msg
// DO NOT EDIT!


#ifndef LASR_VISION_MSGS_MESSAGE_RECOGNISE_H
#define LASR_VISION_MSGS_MESSAGE_RECOGNISE_H

#include <ros/service_traits.h>


#include <lasr_vision_msgs/RecogniseRequest.h>
#include <lasr_vision_msgs/RecogniseResponse.h>


namespace lasr_vision_msgs
{

struct Recognise
{

typedef RecogniseRequest Request;
typedef RecogniseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Recognise
} // namespace lasr_vision_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lasr_vision_msgs::Recognise > {
  static const char* value()
  {
    return "374bce9e43746740c5d20f82f7eecce8";
  }

  static const char* value(const ::lasr_vision_msgs::Recognise&) { return value(); }
};

template<>
struct DataType< ::lasr_vision_msgs::Recognise > {
  static const char* value()
  {
    return "lasr_vision_msgs/Recognise";
  }

  static const char* value(const ::lasr_vision_msgs::Recognise&) { return value(); }
};


// service_traits::MD5Sum< ::lasr_vision_msgs::RecogniseRequest> should match
// service_traits::MD5Sum< ::lasr_vision_msgs::Recognise >
template<>
struct MD5Sum< ::lasr_vision_msgs::RecogniseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lasr_vision_msgs::Recognise >::value();
  }
  static const char* value(const ::lasr_vision_msgs::RecogniseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lasr_vision_msgs::RecogniseRequest> should match
// service_traits::DataType< ::lasr_vision_msgs::Recognise >
template<>
struct DataType< ::lasr_vision_msgs::RecogniseRequest>
{
  static const char* value()
  {
    return DataType< ::lasr_vision_msgs::Recognise >::value();
  }
  static const char* value(const ::lasr_vision_msgs::RecogniseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lasr_vision_msgs::RecogniseResponse> should match
// service_traits::MD5Sum< ::lasr_vision_msgs::Recognise >
template<>
struct MD5Sum< ::lasr_vision_msgs::RecogniseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lasr_vision_msgs::Recognise >::value();
  }
  static const char* value(const ::lasr_vision_msgs::RecogniseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lasr_vision_msgs::RecogniseResponse> should match
// service_traits::DataType< ::lasr_vision_msgs::Recognise >
template<>
struct DataType< ::lasr_vision_msgs::RecogniseResponse>
{
  static const char* value()
  {
    return DataType< ::lasr_vision_msgs::Recognise >::value();
  }
  static const char* value(const ::lasr_vision_msgs::RecogniseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LASR_VISION_MSGS_MESSAGE_RECOGNISE_H
