# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lasr_vision_msgs: 6 messages, 4 services")

set(MSG_I_FLAGS "-Ilasr_vision_msgs:/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lasr_vision_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg" NAME_WE)
add_custom_target(_lasr_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_vision_msgs" "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg" ""
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg" NAME_WE)
add_custom_target(_lasr_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_vision_msgs" "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg" ""
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg" NAME_WE)
add_custom_target(_lasr_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_vision_msgs" "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg" ""
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg" NAME_WE)
add_custom_target(_lasr_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_vision_msgs" "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg" ""
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg" NAME_WE)
add_custom_target(_lasr_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_vision_msgs" "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg" ""
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg" NAME_WE)
add_custom_target(_lasr_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_vision_msgs" "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg" "lasr_vision_msgs/ColourPrediction"
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv" NAME_WE)
add_custom_target(_lasr_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_vision_msgs" "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv" "lasr_vision_msgs/Detection:std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv" NAME_WE)
add_custom_target(_lasr_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_vision_msgs" "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv" "lasr_vision_msgs/BodyPixMaskRequest:std_msgs/Header:lasr_vision_msgs/BodyPixPose:sensor_msgs/Image:lasr_vision_msgs/BodyPixMask"
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv" NAME_WE)
add_custom_target(_lasr_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_vision_msgs" "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv" "lasr_vision_msgs/ColourPrediction:lasr_vision_msgs/FeatureWithColour:std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv" NAME_WE)
add_custom_target(_lasr_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_vision_msgs" "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv" "lasr_vision_msgs/Detection:std_msgs/Header:sensor_msgs/Image"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_cpp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_cpp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_cpp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_cpp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_cpp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
)

### Generating Services
_generate_srv_cpp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_cpp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_cpp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_cpp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
)

### Generating Module File
_generate_module_cpp(lasr_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lasr_vision_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lasr_vision_msgs_generate_messages lasr_vision_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_cpp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_cpp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_cpp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_cpp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_cpp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_cpp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_cpp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_cpp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_cpp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_cpp _lasr_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_vision_msgs_gencpp)
add_dependencies(lasr_vision_msgs_gencpp lasr_vision_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_vision_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_eus(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_eus(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_eus(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_eus(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_eus(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
)

### Generating Services
_generate_srv_eus(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_eus(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_eus(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_eus(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
)

### Generating Module File
_generate_module_eus(lasr_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lasr_vision_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lasr_vision_msgs_generate_messages lasr_vision_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_eus _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_eus _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_eus _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_eus _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_eus _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_eus _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_eus _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_eus _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_eus _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_eus _lasr_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_vision_msgs_geneus)
add_dependencies(lasr_vision_msgs_geneus lasr_vision_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_vision_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_lisp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_lisp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_lisp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_lisp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_lisp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
)

### Generating Services
_generate_srv_lisp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_lisp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_lisp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_lisp(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
)

### Generating Module File
_generate_module_lisp(lasr_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lasr_vision_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lasr_vision_msgs_generate_messages lasr_vision_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_lisp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_lisp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_lisp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_lisp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_lisp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_lisp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_lisp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_lisp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_lisp _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_lisp _lasr_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_vision_msgs_genlisp)
add_dependencies(lasr_vision_msgs_genlisp lasr_vision_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_vision_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_nodejs(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_nodejs(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_nodejs(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_nodejs(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_nodejs(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
)

### Generating Services
_generate_srv_nodejs(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_nodejs(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_nodejs(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_nodejs(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
)

### Generating Module File
_generate_module_nodejs(lasr_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lasr_vision_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lasr_vision_msgs_generate_messages lasr_vision_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_nodejs _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_nodejs _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_nodejs _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_nodejs _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_nodejs _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_nodejs _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_nodejs _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_nodejs _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_nodejs _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_nodejs _lasr_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_vision_msgs_gennodejs)
add_dependencies(lasr_vision_msgs_gennodejs lasr_vision_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_vision_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_py(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_py(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_py(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_py(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
)
_generate_msg_py(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
)

### Generating Services
_generate_srv_py(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_py(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_py(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg;/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
)
_generate_srv_py(lasr_vision_msgs
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv"
  "${MSG_I_FLAGS}"
  "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
)

### Generating Module File
_generate_module_py(lasr_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lasr_vision_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lasr_vision_msgs_generate_messages lasr_vision_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_py _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixPose.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_py _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMask.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_py _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/BodyPixMaskRequest.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_py _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/ColourPrediction.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_py _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/msg/FeatureWithColour.msg" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_py _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/YoloDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_py _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/BodyPixDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_py _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/TorchFaceFeatureDetection.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_py _lasr_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/lasr_vision_msgs/srv/Recognise.srv" NAME_WE)
add_dependencies(lasr_vision_msgs_generate_messages_py _lasr_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_vision_msgs_genpy)
add_dependencies(lasr_vision_msgs_genpy lasr_vision_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_vision_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_vision_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(lasr_vision_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_vision_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(lasr_vision_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_vision_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(lasr_vision_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_vision_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(lasr_vision_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_vision_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(lasr_vision_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
