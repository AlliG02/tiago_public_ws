// Generated by gencpp from file lasr_object_detection_yolo/YoloDetection.msg
// DO NOT EDIT!


#ifndef LASR_OBJECT_DETECTION_YOLO_MESSAGE_YOLODETECTION_H
#define LASR_OBJECT_DETECTION_YOLO_MESSAGE_YOLODETECTION_H

#include <ros/service_traits.h>


#include <lasr_object_detection_yolo/YoloDetectionRequest.h>
#include <lasr_object_detection_yolo/YoloDetectionResponse.h>


namespace lasr_object_detection_yolo
{

struct YoloDetection
{

typedef YoloDetectionRequest Request;
typedef YoloDetectionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct YoloDetection
} // namespace lasr_object_detection_yolo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lasr_object_detection_yolo::YoloDetection > {
  static const char* value()
  {
    return "3fc722e35ac1e73f453c28f316971286";
  }

  static const char* value(const ::lasr_object_detection_yolo::YoloDetection&) { return value(); }
};

template<>
struct DataType< ::lasr_object_detection_yolo::YoloDetection > {
  static const char* value()
  {
    return "lasr_object_detection_yolo/YoloDetection";
  }

  static const char* value(const ::lasr_object_detection_yolo::YoloDetection&) { return value(); }
};


// service_traits::MD5Sum< ::lasr_object_detection_yolo::YoloDetectionRequest> should match
// service_traits::MD5Sum< ::lasr_object_detection_yolo::YoloDetection >
template<>
struct MD5Sum< ::lasr_object_detection_yolo::YoloDetectionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lasr_object_detection_yolo::YoloDetection >::value();
  }
  static const char* value(const ::lasr_object_detection_yolo::YoloDetectionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lasr_object_detection_yolo::YoloDetectionRequest> should match
// service_traits::DataType< ::lasr_object_detection_yolo::YoloDetection >
template<>
struct DataType< ::lasr_object_detection_yolo::YoloDetectionRequest>
{
  static const char* value()
  {
    return DataType< ::lasr_object_detection_yolo::YoloDetection >::value();
  }
  static const char* value(const ::lasr_object_detection_yolo::YoloDetectionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lasr_object_detection_yolo::YoloDetectionResponse> should match
// service_traits::MD5Sum< ::lasr_object_detection_yolo::YoloDetection >
template<>
struct MD5Sum< ::lasr_object_detection_yolo::YoloDetectionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lasr_object_detection_yolo::YoloDetection >::value();
  }
  static const char* value(const ::lasr_object_detection_yolo::YoloDetectionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lasr_object_detection_yolo::YoloDetectionResponse> should match
// service_traits::DataType< ::lasr_object_detection_yolo::YoloDetection >
template<>
struct DataType< ::lasr_object_detection_yolo::YoloDetectionResponse>
{
  static const char* value()
  {
    return DataType< ::lasr_object_detection_yolo::YoloDetection >::value();
  }
  static const char* value(const ::lasr_object_detection_yolo::YoloDetectionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LASR_OBJECT_DETECTION_YOLO_MESSAGE_YOLODETECTION_H
