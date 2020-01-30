# Install script for directory: /home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Assignment2_Turtlesim/srv" TYPE FILE FILES "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Assignment2_Turtlesim/cmake" TYPE FILE FILES "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/build/Assignment2_Turtlesim/catkin_generated/installspace/Assignment2_Turtlesim-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/devel/include/Assignment2_Turtlesim")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/devel/share/roseus/ros/Assignment2_Turtlesim")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/devel/share/common-lisp/ros/Assignment2_Turtlesim")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/devel/share/gennodejs/ros/Assignment2_Turtlesim")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/devel/lib/python2.7/dist-packages/Assignment2_Turtlesim")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/devel/lib/python2.7/dist-packages/Assignment2_Turtlesim")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/build/Assignment2_Turtlesim/catkin_generated/installspace/Assignment2_Turtlesim.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Assignment2_Turtlesim/cmake" TYPE FILE FILES "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/build/Assignment2_Turtlesim/catkin_generated/installspace/Assignment2_Turtlesim-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Assignment2_Turtlesim/cmake" TYPE FILE FILES
    "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/build/Assignment2_Turtlesim/catkin_generated/installspace/Assignment2_TurtlesimConfig.cmake"
    "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/build/Assignment2_Turtlesim/catkin_generated/installspace/Assignment2_TurtlesimConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Assignment2_Turtlesim" TYPE FILE FILES "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/package.xml")
endif()

