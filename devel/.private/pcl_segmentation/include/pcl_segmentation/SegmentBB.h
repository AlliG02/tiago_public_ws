// Generated by gencpp from file pcl_segmentation/SegmentBB.msg
// DO NOT EDIT!


#ifndef PCL_SEGMENTATION_MESSAGE_SEGMENTBB_H
#define PCL_SEGMENTATION_MESSAGE_SEGMENTBB_H

#include <ros/service_traits.h>


#include <pcl_segmentation/SegmentBBRequest.h>
#include <pcl_segmentation/SegmentBBResponse.h>


namespace pcl_segmentation
{

struct SegmentBB
{

typedef SegmentBBRequest Request;
typedef SegmentBBResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SegmentBB
} // namespace pcl_segmentation


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pcl_segmentation::SegmentBB > {
  static const char* value()
  {
    return "f0ea1be981fddc86e1e6ea80904f27b1";
  }

  static const char* value(const ::pcl_segmentation::SegmentBB&) { return value(); }
};

template<>
struct DataType< ::pcl_segmentation::SegmentBB > {
  static const char* value()
  {
    return "pcl_segmentation/SegmentBB";
  }

  static const char* value(const ::pcl_segmentation::SegmentBB&) { return value(); }
};


// service_traits::MD5Sum< ::pcl_segmentation::SegmentBBRequest> should match
// service_traits::MD5Sum< ::pcl_segmentation::SegmentBB >
template<>
struct MD5Sum< ::pcl_segmentation::SegmentBBRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pcl_segmentation::SegmentBB >::value();
  }
  static const char* value(const ::pcl_segmentation::SegmentBBRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pcl_segmentation::SegmentBBRequest> should match
// service_traits::DataType< ::pcl_segmentation::SegmentBB >
template<>
struct DataType< ::pcl_segmentation::SegmentBBRequest>
{
  static const char* value()
  {
    return DataType< ::pcl_segmentation::SegmentBB >::value();
  }
  static const char* value(const ::pcl_segmentation::SegmentBBRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pcl_segmentation::SegmentBBResponse> should match
// service_traits::MD5Sum< ::pcl_segmentation::SegmentBB >
template<>
struct MD5Sum< ::pcl_segmentation::SegmentBBResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pcl_segmentation::SegmentBB >::value();
  }
  static const char* value(const ::pcl_segmentation::SegmentBBResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pcl_segmentation::SegmentBBResponse> should match
// service_traits::DataType< ::pcl_segmentation::SegmentBB >
template<>
struct DataType< ::pcl_segmentation::SegmentBBResponse>
{
  static const char* value()
  {
    return DataType< ::pcl_segmentation::SegmentBB >::value();
  }
  static const char* value(const ::pcl_segmentation::SegmentBBResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PCL_SEGMENTATION_MESSAGE_SEGMENTBB_H
