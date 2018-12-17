// Generated by gencpp from file jrc_srvs/smooth_multi.msg
// DO NOT EDIT!


#ifndef JRC_SRVS_MESSAGE_SMOOTH_MULTI_H
#define JRC_SRVS_MESSAGE_SMOOTH_MULTI_H

#include <ros/service_traits.h>


#include <jrc_srvs/smooth_multiRequest.h>
#include <jrc_srvs/smooth_multiResponse.h>


namespace jrc_srvs
{

struct smooth_multi
{

typedef smooth_multiRequest Request;
typedef smooth_multiResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct smooth_multi
} // namespace jrc_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jrc_srvs::smooth_multi > {
  static const char* value()
  {
    return "3b1e979c6d58d1f5eaa86cabfb1c7458";
  }

  static const char* value(const ::jrc_srvs::smooth_multi&) { return value(); }
};

template<>
struct DataType< ::jrc_srvs::smooth_multi > {
  static const char* value()
  {
    return "jrc_srvs/smooth_multi";
  }

  static const char* value(const ::jrc_srvs::smooth_multi&) { return value(); }
};


// service_traits::MD5Sum< ::jrc_srvs::smooth_multiRequest> should match 
// service_traits::MD5Sum< ::jrc_srvs::smooth_multi > 
template<>
struct MD5Sum< ::jrc_srvs::smooth_multiRequest>
{
  static const char* value()
  {
    return MD5Sum< ::jrc_srvs::smooth_multi >::value();
  }
  static const char* value(const ::jrc_srvs::smooth_multiRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jrc_srvs::smooth_multiRequest> should match 
// service_traits::DataType< ::jrc_srvs::smooth_multi > 
template<>
struct DataType< ::jrc_srvs::smooth_multiRequest>
{
  static const char* value()
  {
    return DataType< ::jrc_srvs::smooth_multi >::value();
  }
  static const char* value(const ::jrc_srvs::smooth_multiRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jrc_srvs::smooth_multiResponse> should match 
// service_traits::MD5Sum< ::jrc_srvs::smooth_multi > 
template<>
struct MD5Sum< ::jrc_srvs::smooth_multiResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jrc_srvs::smooth_multi >::value();
  }
  static const char* value(const ::jrc_srvs::smooth_multiResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jrc_srvs::smooth_multiResponse> should match 
// service_traits::DataType< ::jrc_srvs::smooth_multi > 
template<>
struct DataType< ::jrc_srvs::smooth_multiResponse>
{
  static const char* value()
  {
    return DataType< ::jrc_srvs::smooth_multi >::value();
  }
  static const char* value(const ::jrc_srvs::smooth_multiResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JRC_SRVS_MESSAGE_SMOOTH_MULTI_H
