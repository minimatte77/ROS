cmake_minimum_required(VERSION 3.0.2)
project(arduinobot_controller)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

add_service_files(
  FILES
  AnglesConverter.srv
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