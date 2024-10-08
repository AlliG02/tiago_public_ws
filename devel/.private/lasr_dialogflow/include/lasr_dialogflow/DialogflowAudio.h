// Generated by gencpp from file lasr_dialogflow/DialogflowAudio.msg
// DO NOT EDIT!


#ifndef LASR_DIALOGFLOW_MESSAGE_DIALOGFLOWAUDIO_H
#define LASR_DIALOGFLOW_MESSAGE_DIALOGFLOWAUDIO_H

#include <ros/service_traits.h>


#include <lasr_dialogflow/DialogflowAudioRequest.h>
#include <lasr_dialogflow/DialogflowAudioResponse.h>


namespace lasr_dialogflow
{

struct DialogflowAudio
{

typedef DialogflowAudioRequest Request;
typedef DialogflowAudioResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DialogflowAudio
} // namespace lasr_dialogflow


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lasr_dialogflow::DialogflowAudio > {
  static const char* value()
  {
    return "c6778e75ee863a7048845ef167f478f5";
  }

  static const char* value(const ::lasr_dialogflow::DialogflowAudio&) { return value(); }
};

template<>
struct DataType< ::lasr_dialogflow::DialogflowAudio > {
  static const char* value()
  {
    return "lasr_dialogflow/DialogflowAudio";
  }

  static const char* value(const ::lasr_dialogflow::DialogflowAudio&) { return value(); }
};


// service_traits::MD5Sum< ::lasr_dialogflow::DialogflowAudioRequest> should match
// service_traits::MD5Sum< ::lasr_dialogflow::DialogflowAudio >
template<>
struct MD5Sum< ::lasr_dialogflow::DialogflowAudioRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lasr_dialogflow::DialogflowAudio >::value();
  }
  static const char* value(const ::lasr_dialogflow::DialogflowAudioRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lasr_dialogflow::DialogflowAudioRequest> should match
// service_traits::DataType< ::lasr_dialogflow::DialogflowAudio >
template<>
struct DataType< ::lasr_dialogflow::DialogflowAudioRequest>
{
  static const char* value()
  {
    return DataType< ::lasr_dialogflow::DialogflowAudio >::value();
  }
  static const char* value(const ::lasr_dialogflow::DialogflowAudioRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lasr_dialogflow::DialogflowAudioResponse> should match
// service_traits::MD5Sum< ::lasr_dialogflow::DialogflowAudio >
template<>
struct MD5Sum< ::lasr_dialogflow::DialogflowAudioResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lasr_dialogflow::DialogflowAudio >::value();
  }
  static const char* value(const ::lasr_dialogflow::DialogflowAudioResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lasr_dialogflow::DialogflowAudioResponse> should match
// service_traits::DataType< ::lasr_dialogflow::DialogflowAudio >
template<>
struct DataType< ::lasr_dialogflow::DialogflowAudioResponse>
{
  static const char* value()
  {
    return DataType< ::lasr_dialogflow::DialogflowAudio >::value();
  }
  static const char* value(const ::lasr_dialogflow::DialogflowAudioResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LASR_DIALOGFLOW_MESSAGE_DIALOGFLOWAUDIO_H
