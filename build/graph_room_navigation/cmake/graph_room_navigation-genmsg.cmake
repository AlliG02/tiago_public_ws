# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "graph_room_navigation: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(graph_room_navigation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv" NAME_WE)
add_custom_target(_graph_room_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graph_room_navigation" "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv" NAME_WE)
add_custom_target(_graph_room_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graph_room_navigation" "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv" NAME_WE)
add_custom_target(_graph_room_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graph_room_navigation" "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv" NAME_WE)
add_custom_target(_graph_room_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "graph_room_navigation" "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_cpp(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_cpp(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_cpp(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graph_room_navigation
)

### Generating Module File
_generate_module_cpp(graph_room_navigation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graph_room_navigation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(graph_room_navigation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(graph_room_navigation_generate_messages graph_room_navigation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_cpp _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_cpp _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_cpp _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_cpp _graph_room_navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graph_room_navigation_gencpp)
add_dependencies(graph_room_navigation_gencpp graph_room_navigation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graph_room_navigation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_eus(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_eus(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_eus(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graph_room_navigation
)

### Generating Module File
_generate_module_eus(graph_room_navigation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graph_room_navigation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(graph_room_navigation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(graph_room_navigation_generate_messages graph_room_navigation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_eus _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_eus _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_eus _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_eus _graph_room_navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graph_room_navigation_geneus)
add_dependencies(graph_room_navigation_geneus graph_room_navigation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graph_room_navigation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_lisp(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_lisp(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_lisp(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graph_room_navigation
)

### Generating Module File
_generate_module_lisp(graph_room_navigation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graph_room_navigation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(graph_room_navigation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(graph_room_navigation_generate_messages graph_room_navigation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_lisp _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_lisp _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_lisp _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_lisp _graph_room_navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graph_room_navigation_genlisp)
add_dependencies(graph_room_navigation_genlisp graph_room_navigation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graph_room_navigation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_nodejs(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_nodejs(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_nodejs(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graph_room_navigation
)

### Generating Module File
_generate_module_nodejs(graph_room_navigation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graph_room_navigation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(graph_room_navigation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(graph_room_navigation_generate_messages graph_room_navigation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_nodejs _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_nodejs _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_nodejs _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_nodejs _graph_room_navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graph_room_navigation_gennodejs)
add_dependencies(graph_room_navigation_gennodejs graph_room_navigation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graph_room_navigation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_py(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_py(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graph_room_navigation
)
_generate_srv_py(graph_room_navigation
  "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graph_room_navigation
)

### Generating Module File
_generate_module_py(graph_room_navigation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graph_room_navigation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(graph_room_navigation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(graph_room_navigation_generate_messages graph_room_navigation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddRoom.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_py _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/AddCrossing.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_py _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToRoom.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_py _graph_room_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/graph_room_navigation/srv/PlanToPoint.srv" NAME_WE)
add_dependencies(graph_room_navigation_generate_messages_py _graph_room_navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(graph_room_navigation_genpy)
add_dependencies(graph_room_navigation_genpy graph_room_navigation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS graph_room_navigation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graph_room_navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/graph_room_navigation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(graph_room_navigation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(graph_room_navigation_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graph_room_navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/graph_room_navigation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(graph_room_navigation_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(graph_room_navigation_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graph_room_navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/graph_room_navigation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(graph_room_navigation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(graph_room_navigation_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graph_room_navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/graph_room_navigation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(graph_room_navigation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(graph_room_navigation_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graph_room_navigation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graph_room_navigation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graph_room_navigation
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graph_room_navigation")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/graph_room_navigation
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(graph_room_navigation_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(graph_room_navigation_generate_messages_py geometry_msgs_generate_messages_py)
endif()
