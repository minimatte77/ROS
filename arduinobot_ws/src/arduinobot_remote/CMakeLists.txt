cmake_minimum_required(VERSION 3.0.2)
project(arduinobot_remote)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  actionlib             
  std_msgs                      
  message_generation 
  moveit_ros_planning_interface
)

add_action_files(
  FILES 
  ArduinobotTask.action
)

generate_messages(
  DEPENDENCIES
  std_msgs
  actionlib_msgs
)


catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

