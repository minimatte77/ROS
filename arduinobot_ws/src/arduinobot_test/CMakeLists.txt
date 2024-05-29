cmake_minimum_required(VERSION 3.0.2)
project(arduinobot_test)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

add_service_files(
  FILES
  AddTwoInts.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
)


catkin_package(

)


include_directories(
  ${catkin_INCLUDE_DIRS}
)

#add_executable(simple_cpp_publisher src/simple_publisher.py)
#target_link_libraries(simple_cpp_publisher ${catkin_LIBRARIES})

#add_executable(simple_cpp_subscriber src/simple_subscriber.py)
#target_link_libraries(simple_cpp_subscriber ${catkin_LIBRARIES})