# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lasr_object_detection_yolo: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Ilasr_vision_msgs:/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lasr_object_detection_yolo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv" NAME_WE)
add_custom_target(_lasr_object_detection_yolo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_object_detection_yolo" "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv" "sensor_msgs/Image:std_msgs/Header:lasr_vision_msgs/Detection"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(lasr_object_detection_yolo
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_object_detection_yolo
)

### Generating Module File
_generate_module_cpp(lasr_object_detection_yolo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_object_detection_yolo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lasr_object_detection_yolo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lasr_object_detection_yolo_generate_messages lasr_object_detection_yolo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv" NAME_WE)
add_dependencies(lasr_object_detection_yolo_generate_messages_cpp _lasr_object_detection_yolo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_object_detection_yolo_gencpp)
add_dependencies(lasr_object_detection_yolo_gencpp lasr_object_detection_yolo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_object_detection_yolo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(lasr_object_detection_yolo
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_object_detection_yolo
)

### Generating Module File
_generate_module_eus(lasr_object_detection_yolo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_object_detection_yolo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lasr_object_detection_yolo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lasr_object_detection_yolo_generate_messages lasr_object_detection_yolo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv" NAME_WE)
add_dependencies(lasr_object_detection_yolo_generate_messages_eus _lasr_object_detection_yolo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_object_detection_yolo_geneus)
add_dependencies(lasr_object_detection_yolo_geneus lasr_object_detection_yolo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_object_detection_yolo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(lasr_object_detection_yolo
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_object_detection_yolo
)

### Generating Module File
_generate_module_lisp(lasr_object_detection_yolo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_object_detection_yolo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lasr_object_detection_yolo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lasr_object_detection_yolo_generate_messages lasr_object_detection_yolo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv" NAME_WE)
add_dependencies(lasr_object_detection_yolo_generate_messages_lisp _lasr_object_detection_yolo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_object_detection_yolo_genlisp)
add_dependencies(lasr_object_detection_yolo_genlisp lasr_object_detection_yolo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_object_detection_yolo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(lasr_object_detection_yolo
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_object_detection_yolo
)

### Generating Module File
_generate_module_nodejs(lasr_object_detection_yolo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_object_detection_yolo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lasr_object_detection_yolo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lasr_object_detection_yolo_generate_messages lasr_object_detection_yolo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv" NAME_WE)
add_dependencies(lasr_object_detection_yolo_generate_messages_nodejs _lasr_object_detection_yolo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_object_detection_yolo_gennodejs)
add_dependencies(lasr_object_detection_yolo_gennodejs lasr_object_detection_yolo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_object_detection_yolo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(lasr_object_detection_yolo
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_object_detection_yolo
)

### Generating Module File
_generate_module_py(lasr_object_detection_yolo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_object_detection_yolo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lasr_object_detection_yolo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lasr_object_detection_yolo_generate_messages lasr_object_detection_yolo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_object_detection_yolo/srv/YoloDetection.srv" NAME_WE)
add_dependencies(lasr_object_detection_yolo_generate_messages_py _lasr_object_detection_yolo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_object_detection_yolo_genpy)
add_dependencies(lasr_object_detection_yolo_genpy lasr_object_detection_yolo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_object_detection_yolo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_object_detection_yolo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_object_detection_yolo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lasr_object_detection_yolo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(lasr_object_detection_yolo_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET lasr_vision_msgs_generate_messages_cpp)
  add_dependencies(lasr_object_detection_yolo_generate_messages_cpp lasr_vision_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_object_detection_yolo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_object_detection_yolo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lasr_object_detection_yolo_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(lasr_object_detection_yolo_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET lasr_vision_msgs_generate_messages_eus)
  add_dependencies(lasr_object_detection_yolo_generate_messages_eus lasr_vision_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_object_detection_yolo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_object_detection_yolo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lasr_object_detection_yolo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(lasr_object_detection_yolo_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET lasr_vision_msgs_generate_messages_lisp)
  add_dependencies(lasr_object_detection_yolo_generate_messages_lisp lasr_vision_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_object_detection_yolo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_object_detection_yolo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lasr_object_detection_yolo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(lasr_object_detection_yolo_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET lasr_vision_msgs_generate_messages_nodejs)
  add_dependencies(lasr_object_detection_yolo_generate_messages_nodejs lasr_vision_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_object_detection_yolo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_object_detection_yolo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_object_detection_yolo
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_object_detection_yolo")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_object_detection_yolo
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lasr_object_detection_yolo_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(lasr_object_detection_yolo_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET lasr_vision_msgs_generate_messages_py)
  add_dependencies(lasr_object_detection_yolo_generate_messages_py lasr_vision_msgs_generate_messages_py)
endif()
