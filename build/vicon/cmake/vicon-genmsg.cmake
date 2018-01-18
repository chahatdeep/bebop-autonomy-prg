# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vicon: 3 messages, 1 services")

set(MSG_I_FLAGS "-Ivicon:/home/dronelaptop/bebop_ws/src/vicon/vicon/msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vicon_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg" NAME_WE)
add_custom_target(_vicon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon" "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg" "geometry_msgs/Quaternion:vicon/Marker:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv" NAME_WE)
add_custom_target(_vicon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon" "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg" NAME_WE)
add_custom_target(_vicon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon" "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg" NAME_WE)
add_custom_target(_vicon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon" "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg" "vicon/Marker:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon
)
_generate_msg_cpp(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon
)
_generate_msg_cpp(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon
)

### Generating Services
_generate_srv_cpp(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon
)

### Generating Module File
_generate_module_cpp(vicon
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vicon_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vicon_generate_messages vicon_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg" NAME_WE)
add_dependencies(vicon_generate_messages_cpp _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv" NAME_WE)
add_dependencies(vicon_generate_messages_cpp _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg" NAME_WE)
add_dependencies(vicon_generate_messages_cpp _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg" NAME_WE)
add_dependencies(vicon_generate_messages_cpp _vicon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_gencpp)
add_dependencies(vicon_gencpp vicon_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vicon
)
_generate_msg_eus(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vicon
)
_generate_msg_eus(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vicon
)

### Generating Services
_generate_srv_eus(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vicon
)

### Generating Module File
_generate_module_eus(vicon
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vicon
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vicon_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vicon_generate_messages vicon_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg" NAME_WE)
add_dependencies(vicon_generate_messages_eus _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv" NAME_WE)
add_dependencies(vicon_generate_messages_eus _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg" NAME_WE)
add_dependencies(vicon_generate_messages_eus _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg" NAME_WE)
add_dependencies(vicon_generate_messages_eus _vicon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_geneus)
add_dependencies(vicon_geneus vicon_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon
)
_generate_msg_lisp(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon
)
_generate_msg_lisp(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon
)

### Generating Services
_generate_srv_lisp(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon
)

### Generating Module File
_generate_module_lisp(vicon
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vicon_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vicon_generate_messages vicon_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg" NAME_WE)
add_dependencies(vicon_generate_messages_lisp _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv" NAME_WE)
add_dependencies(vicon_generate_messages_lisp _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg" NAME_WE)
add_dependencies(vicon_generate_messages_lisp _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg" NAME_WE)
add_dependencies(vicon_generate_messages_lisp _vicon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_genlisp)
add_dependencies(vicon_genlisp vicon_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vicon
)
_generate_msg_nodejs(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vicon
)
_generate_msg_nodejs(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vicon
)

### Generating Services
_generate_srv_nodejs(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vicon
)

### Generating Module File
_generate_module_nodejs(vicon
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vicon
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vicon_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vicon_generate_messages vicon_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg" NAME_WE)
add_dependencies(vicon_generate_messages_nodejs _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv" NAME_WE)
add_dependencies(vicon_generate_messages_nodejs _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg" NAME_WE)
add_dependencies(vicon_generate_messages_nodejs _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg" NAME_WE)
add_dependencies(vicon_generate_messages_nodejs _vicon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_gennodejs)
add_dependencies(vicon_gennodejs vicon_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon
)
_generate_msg_py(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon
)
_generate_msg_py(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon
)

### Generating Services
_generate_srv_py(vicon
  "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon
)

### Generating Module File
_generate_module_py(vicon
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vicon_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vicon_generate_messages vicon_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Subject.msg" NAME_WE)
add_dependencies(vicon_generate_messages_py _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/srv/SetPose.srv" NAME_WE)
add_dependencies(vicon_generate_messages_py _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Marker.msg" NAME_WE)
add_dependencies(vicon_generate_messages_py _vicon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dronelaptop/bebop_ws/src/vicon/vicon/msg/Markers.msg" NAME_WE)
add_dependencies(vicon_generate_messages_py _vicon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_genpy)
add_dependencies(vicon_genpy vicon_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(vicon_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(vicon_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vicon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vicon
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(vicon_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(vicon_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(vicon_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(vicon_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vicon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vicon
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(vicon_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(vicon_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(vicon_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(vicon_generate_messages_py geometry_msgs_generate_messages_py)
endif()
