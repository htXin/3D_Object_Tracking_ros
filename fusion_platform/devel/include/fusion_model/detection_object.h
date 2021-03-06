// Generated by gencpp from file fusion_model/detection_object.msg
// DO NOT EDIT!


#ifndef FUSION_MODEL_MESSAGE_DETECTION_OBJECT_H
#define FUSION_MODEL_MESSAGE_DETECTION_OBJECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace fusion_model
{
template <class ContainerAllocator>
struct detection_object_
{
  typedef detection_object_<ContainerAllocator> Type;

  detection_object_()
    : header()
    , type()
    , x1()
    , y1()
    , x2()
    , y2()
    , score()
    , x()
    , y()
    , z()
    , l()
    , h()
    , w()
    , rot_y()
    , ori_tmp()
    , object_id(0)  {
    }
  detection_object_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , type(_alloc)
    , x1(_alloc)
    , y1(_alloc)
    , x2(_alloc)
    , y2(_alloc)
    , score(_alloc)
    , x(_alloc)
    , y(_alloc)
    , z(_alloc)
    , l(_alloc)
    , h(_alloc)
    , w(_alloc)
    , rot_y(_alloc)
    , ori_tmp(_alloc)
    , object_id(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _x1_type;
  _x1_type x1;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _y1_type;
  _y1_type y1;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _x2_type;
  _x2_type x2;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _y2_type;
  _y2_type y2;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _score_type;
  _score_type score;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _x_type;
  _x_type x;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _y_type;
  _y_type y;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _z_type;
  _z_type z;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _l_type;
  _l_type l;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _h_type;
  _h_type h;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _w_type;
  _w_type w;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _rot_y_type;
  _rot_y_type rot_y;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ori_tmp_type;
  _ori_tmp_type ori_tmp;

   typedef uint32_t _object_id_type;
  _object_id_type object_id;





  typedef boost::shared_ptr< ::fusion_model::detection_object_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fusion_model::detection_object_<ContainerAllocator> const> ConstPtr;

}; // struct detection_object_

typedef ::fusion_model::detection_object_<std::allocator<void> > detection_object;

typedef boost::shared_ptr< ::fusion_model::detection_object > detection_objectPtr;
typedef boost::shared_ptr< ::fusion_model::detection_object const> detection_objectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fusion_model::detection_object_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fusion_model::detection_object_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fusion_model::detection_object_<ContainerAllocator1> & lhs, const ::fusion_model::detection_object_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.type == rhs.type &&
    lhs.x1 == rhs.x1 &&
    lhs.y1 == rhs.y1 &&
    lhs.x2 == rhs.x2 &&
    lhs.y2 == rhs.y2 &&
    lhs.score == rhs.score &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.l == rhs.l &&
    lhs.h == rhs.h &&
    lhs.w == rhs.w &&
    lhs.rot_y == rhs.rot_y &&
    lhs.ori_tmp == rhs.ori_tmp &&
    lhs.object_id == rhs.object_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fusion_model::detection_object_<ContainerAllocator1> & lhs, const ::fusion_model::detection_object_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fusion_model

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::fusion_model::detection_object_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fusion_model::detection_object_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fusion_model::detection_object_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fusion_model::detection_object_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fusion_model::detection_object_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fusion_model::detection_object_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fusion_model::detection_object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6dd18a1a4f12b5503132ac93e640ce1c";
  }

  static const char* value(const ::fusion_model::detection_object_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6dd18a1a4f12b550ULL;
  static const uint64_t static_value2 = 0x3132ac93e640ce1cULL;
};

template<class ContainerAllocator>
struct DataType< ::fusion_model::detection_object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fusion_model/detection_object";
  }

  static const char* value(const ::fusion_model::detection_object_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fusion_model::detection_object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header #header timestamp is time of frame acquisition\n"
"string type # type of object(pedestrian:1,car:2,cyclist:3)\n"
"\n"
"string x1  \n"
"string y1 \n"
"string x2 \n"
"string y2 \n"
"\n"
"string score\n"
"\n"
"string x # x coordinate of the center of the bottom face of the bounding box\n"
"string y # y coordinate of the center of the bottom face of the bounding box\n"
"string z # x coordinate of the center of the bottom face of the bounding box\n"
"string l # size of bounding box along x dimension\n"
"string h # size of bounding box along y dimension\n"
"string w # size of bounding box along z dimension\n"
"string rot_y # rotation of bounding box with respect to the positive x axis\n"
"\n"
"string ori_tmp\n"
"uint32 object_id\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::fusion_model::detection_object_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fusion_model::detection_object_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.type);
      stream.next(m.x1);
      stream.next(m.y1);
      stream.next(m.x2);
      stream.next(m.y2);
      stream.next(m.score);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.l);
      stream.next(m.h);
      stream.next(m.w);
      stream.next(m.rot_y);
      stream.next(m.ori_tmp);
      stream.next(m.object_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct detection_object_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fusion_model::detection_object_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fusion_model::detection_object_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "x1: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.x1);
    s << indent << "y1: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.y1);
    s << indent << "x2: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.x2);
    s << indent << "y2: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.y2);
    s << indent << "score: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.score);
    s << indent << "x: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.z);
    s << indent << "l: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.l);
    s << indent << "h: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.h);
    s << indent << "w: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.w);
    s << indent << "rot_y: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.rot_y);
    s << indent << "ori_tmp: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ori_tmp);
    s << indent << "object_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.object_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FUSION_MODEL_MESSAGE_DETECTION_OBJECT_H
