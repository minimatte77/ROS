// Generated by gencpp from file arduinobot_test/FibonacciGoal.msg
// DO NOT EDIT!


#ifndef ARDUINOBOT_TEST_MESSAGE_FIBONACCIGOAL_H
#define ARDUINOBOT_TEST_MESSAGE_FIBONACCIGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arduinobot_test
{
template <class ContainerAllocator>
struct FibonacciGoal_
{
  typedef FibonacciGoal_<ContainerAllocator> Type;

  FibonacciGoal_()
    : order(0)  {
    }
  FibonacciGoal_(const ContainerAllocator& _alloc)
    : order(0)  {
  (void)_alloc;
    }



   typedef int32_t _order_type;
  _order_type order;





  typedef boost::shared_ptr< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> const> ConstPtr;

}; // struct FibonacciGoal_

typedef ::arduinobot_test::FibonacciGoal_<std::allocator<void> > FibonacciGoal;

typedef boost::shared_ptr< ::arduinobot_test::FibonacciGoal > FibonacciGoalPtr;
typedef boost::shared_ptr< ::arduinobot_test::FibonacciGoal const> FibonacciGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arduinobot_test::FibonacciGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arduinobot_test::FibonacciGoal_<ContainerAllocator1> & lhs, const ::arduinobot_test::FibonacciGoal_<ContainerAllocator2> & rhs)
{
  return lhs.order == rhs.order;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arduinobot_test::FibonacciGoal_<ContainerAllocator1> & lhs, const ::arduinobot_test::FibonacciGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arduinobot_test

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6889063349a00b249bd1661df429d822";
  }

  static const char* value(const ::arduinobot_test::FibonacciGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6889063349a00b24ULL;
  static const uint64_t static_value2 = 0x9bd1661df429d822ULL;
};

template<class ContainerAllocator>
struct DataType< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arduinobot_test/FibonacciGoal";
  }

  static const char* value(const ::arduinobot_test::FibonacciGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Goal\n"
"int32 order\n"
;
  }

  static const char* value(const ::arduinobot_test::FibonacciGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.order);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FibonacciGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arduinobot_test::FibonacciGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arduinobot_test::FibonacciGoal_<ContainerAllocator>& v)
  {
    s << indent << "order: ";
    Printer<int32_t>::stream(s, indent + "  ", v.order);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARDUINOBOT_TEST_MESSAGE_FIBONACCIGOAL_H