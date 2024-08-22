# Install script for directory: /media/psf/GitHub/ROS/arduinobot_ws/src/arduinobot_test

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/media/psf/GitHub/ROS/arduinobot_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduinobot_test/srv" TYPE FILE FILES "/media/psf/GitHub/ROS/arduinobot_ws/src/arduinobot_test/srv/AddTwoInts.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduinobot_test/action" TYPE FILE FILES "/media/psf/GitHub/ROS/arduinobot_ws/src/arduinobot_test/action/Fibonacci.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduinobot_test/msg" TYPE FILE FILES
    "/media/psf/GitHub/ROS/arduinobot_ws/devel/share/arduinobot_test/msg/FibonacciAction.msg"
    "/media/psf/GitHub/ROS/arduinobot_ws/devel/share/arduinobot_test/msg/FibonacciActionGoal.msg"
    "/media/psf/GitHub/ROS/arduinobot_ws/devel/share/arduinobot_test/msg/FibonacciActionResult.msg"
    "/media/psf/GitHub/ROS/arduinobot_ws/devel/share/arduinobot_test/msg/FibonacciActionFeedback.msg"
    "/media/psf/GitHub/ROS/arduinobot_ws/devel/share/arduinobot_test/msg/FibonacciGoal.msg"
    "/media/psf/GitHub/ROS/arduinobot_ws/devel/share/arduinobot_test/msg/FibonacciResult.msg"
    "/media/psf/GitHub/ROS/arduinobot_ws/devel/share/arduinobot_test/msg/FibonacciFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduinobot_test/cmake" TYPE FILE FILES "/media/psf/GitHub/ROS/arduinobot_ws/build/arduinobot_test/catkin_generated/installspace/arduinobot_test-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/media/psf/GitHub/ROS/arduinobot_ws/devel/include/arduinobot_test")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/media/psf/GitHub/ROS/arduinobot_ws/devel/share/roseus/ros/arduinobot_test")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/media/psf/GitHub/ROS/arduinobot_ws/devel/share/common-lisp/ros/arduinobot_test")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/media/psf/GitHub/ROS/arduinobot_ws/devel/share/gennodejs/ros/arduinobot_test")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/media/psf/GitHub/ROS/arduinobot_ws/devel/lib/python3/dist-packages/arduinobot_test")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/media/psf/GitHub/ROS/arduinobot_ws/devel/lib/python3/dist-packages/arduinobot_test")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/media/psf/GitHub/ROS/arduinobot_ws/build/arduinobot_test/catkin_generated/installspace/arduinobot_test.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduinobot_test/cmake" TYPE FILE FILES "/media/psf/GitHub/ROS/arduinobot_ws/build/arduinobot_test/catkin_generated/installspace/arduinobot_test-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduinobot_test/cmake" TYPE FILE FILES
    "/media/psf/GitHub/ROS/arduinobot_ws/build/arduinobot_test/catkin_generated/installspace/arduinobot_testConfig.cmake"
    "/media/psf/GitHub/ROS/arduinobot_ws/build/arduinobot_test/catkin_generated/installspace/arduinobot_testConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arduinobot_test" TYPE FILE FILES "/media/psf/GitHub/ROS/arduinobot_ws/src/arduinobot_test/package.xml")
endif()

