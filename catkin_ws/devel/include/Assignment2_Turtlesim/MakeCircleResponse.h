// Generated by gencpp from file Assignment2_Turtlesim/MakeCircleResponse.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT2_TURTLESIM_MESSAGE_MAKECIRCLERESPONSE_H
#define ASSIGNMENT2_TURTLESIM_MESSAGE_MAKECIRCLERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace Assignment2_Turtlesim
{
template <class ContainerAllocator>
struct MakeCircleResponse_
{
  typedef MakeCircleResponse_<ContainerAllocator> Type;

  MakeCircleResponse_()
    {
    }
  MakeCircleResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MakeCircleResponse_

typedef ::Assignment2_Turtlesim::MakeCircleResponse_<std::allocator<void> > MakeCircleResponse;

typedef boost::shared_ptr< ::Assignment2_Turtlesim::MakeCircleResponse > MakeCircleResponsePtr;
typedef boost::shared_ptr< ::Assignment2_Turtlesim::MakeCircleResponse const> MakeCircleResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace Assignment2_Turtlesim

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Assignment2_Turtlesim/MakeCircleResponse";
  }

  static const char* value(const ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MakeCircleResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::Assignment2_Turtlesim::MakeCircleResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT2_TURTLESIM_MESSAGE_MAKECIRCLERESPONSE_H
