# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "Assignment2_Turtlesim: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(Assignment2_Turtlesim_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv" NAME_WE)
add_custom_target(_Assignment2_Turtlesim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Assignment2_Turtlesim" "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(Assignment2_Turtlesim
  "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Assignment2_Turtlesim
)

### Generating Module File
_generate_module_cpp(Assignment2_Turtlesim
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Assignment2_Turtlesim
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(Assignment2_Turtlesim_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(Assignment2_Turtlesim_generate_messages Assignment2_Turtlesim_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv" NAME_WE)
add_dependencies(Assignment2_Turtlesim_generate_messages_cpp _Assignment2_Turtlesim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Assignment2_Turtlesim_gencpp)
add_dependencies(Assignment2_Turtlesim_gencpp Assignment2_Turtlesim_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Assignment2_Turtlesim_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(Assignment2_Turtlesim
  "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Assignment2_Turtlesim
)

### Generating Module File
_generate_module_eus(Assignment2_Turtlesim
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Assignment2_Turtlesim
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(Assignment2_Turtlesim_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(Assignment2_Turtlesim_generate_messages Assignment2_Turtlesim_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv" NAME_WE)
add_dependencies(Assignment2_Turtlesim_generate_messages_eus _Assignment2_Turtlesim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Assignment2_Turtlesim_geneus)
add_dependencies(Assignment2_Turtlesim_geneus Assignment2_Turtlesim_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Assignment2_Turtlesim_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(Assignment2_Turtlesim
  "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Assignment2_Turtlesim
)

### Generating Module File
_generate_module_lisp(Assignment2_Turtlesim
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Assignment2_Turtlesim
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(Assignment2_Turtlesim_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(Assignment2_Turtlesim_generate_messages Assignment2_Turtlesim_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv" NAME_WE)
add_dependencies(Assignment2_Turtlesim_generate_messages_lisp _Assignment2_Turtlesim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Assignment2_Turtlesim_genlisp)
add_dependencies(Assignment2_Turtlesim_genlisp Assignment2_Turtlesim_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Assignment2_Turtlesim_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(Assignment2_Turtlesim
  "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Assignment2_Turtlesim
)

### Generating Module File
_generate_module_nodejs(Assignment2_Turtlesim
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Assignment2_Turtlesim
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(Assignment2_Turtlesim_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(Assignment2_Turtlesim_generate_messages Assignment2_Turtlesim_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv" NAME_WE)
add_dependencies(Assignment2_Turtlesim_generate_messages_nodejs _Assignment2_Turtlesim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Assignment2_Turtlesim_gennodejs)
add_dependencies(Assignment2_Turtlesim_gennodejs Assignment2_Turtlesim_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Assignment2_Turtlesim_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(Assignment2_Turtlesim
  "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Assignment2_Turtlesim
)

### Generating Module File
_generate_module_py(Assignment2_Turtlesim
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Assignment2_Turtlesim
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(Assignment2_Turtlesim_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(Assignment2_Turtlesim_generate_messages Assignment2_Turtlesim_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajoglek/AuE893_Spring20_Ajinkya_Joglekar/catkin_ws/src/Assignment2_Turtlesim/srv/MakeCircle.srv" NAME_WE)
add_dependencies(Assignment2_Turtlesim_generate_messages_py _Assignment2_Turtlesim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Assignment2_Turtlesim_genpy)
add_dependencies(Assignment2_Turtlesim_genpy Assignment2_Turtlesim_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Assignment2_Turtlesim_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Assignment2_Turtlesim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Assignment2_Turtlesim
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(Assignment2_Turtlesim_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Assignment2_Turtlesim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Assignment2_Turtlesim
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(Assignment2_Turtlesim_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Assignment2_Turtlesim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Assignment2_Turtlesim
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(Assignment2_Turtlesim_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Assignment2_Turtlesim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Assignment2_Turtlesim
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(Assignment2_Turtlesim_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Assignment2_Turtlesim)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Assignment2_Turtlesim\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Assignment2_Turtlesim
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(Assignment2_Turtlesim_generate_messages_py std_msgs_generate_messages_py)
endif()
