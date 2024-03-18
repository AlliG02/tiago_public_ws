# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pcl_segmentation: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pcl_segmentation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv" NAME_WE)
add_custom_target(_pcl_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pcl_segmentation" "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv" "sensor_msgs/PointCloud2:geometry_msgs/Point:std_msgs/Header:sensor_msgs/PointField"
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv" NAME_WE)
add_custom_target(_pcl_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pcl_segmentation" "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv" "sensor_msgs/PointCloud2:std_msgs/Header:sensor_msgs/PointField"
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv" NAME_WE)
add_custom_target(_pcl_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pcl_segmentation" "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv" "geometry_msgs/Point:sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv" NAME_WE)
add_custom_target(_pcl_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pcl_segmentation" "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv" "geometry_msgs/Point:sensor_msgs/PointCloud2:sensor_msgs/Image:sensor_msgs/PointField:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_cpp(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_cpp(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_cpp(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcl_segmentation
)

### Generating Module File
_generate_module_cpp(pcl_segmentation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcl_segmentation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pcl_segmentation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pcl_segmentation_generate_messages pcl_segmentation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_cpp _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_cpp _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_cpp _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_cpp _pcl_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pcl_segmentation_gencpp)
add_dependencies(pcl_segmentation_gencpp pcl_segmentation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pcl_segmentation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_eus(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_eus(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_eus(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcl_segmentation
)

### Generating Module File
_generate_module_eus(pcl_segmentation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcl_segmentation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pcl_segmentation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pcl_segmentation_generate_messages pcl_segmentation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_eus _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_eus _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_eus _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_eus _pcl_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pcl_segmentation_geneus)
add_dependencies(pcl_segmentation_geneus pcl_segmentation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pcl_segmentation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_lisp(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_lisp(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_lisp(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcl_segmentation
)

### Generating Module File
_generate_module_lisp(pcl_segmentation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcl_segmentation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pcl_segmentation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pcl_segmentation_generate_messages pcl_segmentation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_lisp _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_lisp _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_lisp _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_lisp _pcl_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pcl_segmentation_genlisp)
add_dependencies(pcl_segmentation_genlisp pcl_segmentation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pcl_segmentation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_nodejs(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_nodejs(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_nodejs(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcl_segmentation
)

### Generating Module File
_generate_module_nodejs(pcl_segmentation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcl_segmentation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pcl_segmentation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pcl_segmentation_generate_messages pcl_segmentation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_nodejs _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_nodejs _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_nodejs _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_nodejs _pcl_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pcl_segmentation_gennodejs)
add_dependencies(pcl_segmentation_gennodejs pcl_segmentation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pcl_segmentation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_py(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_py(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcl_segmentation
)
_generate_srv_py(pcl_segmentation
  "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcl_segmentation
)

### Generating Module File
_generate_module_py(pcl_segmentation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcl_segmentation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pcl_segmentation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pcl_segmentation_generate_messages pcl_segmentation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentCuboid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_py _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/SegmentBB.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_py _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/Centroid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_py _pcl_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/pcl_segmentation/srv/MaskFromCuboid.srv" NAME_WE)
add_dependencies(pcl_segmentation_generate_messages_py _pcl_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pcl_segmentation_genpy)
add_dependencies(pcl_segmentation_genpy pcl_segmentation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pcl_segmentation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcl_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pcl_segmentation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pcl_segmentation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(pcl_segmentation_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pcl_segmentation_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcl_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pcl_segmentation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pcl_segmentation_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(pcl_segmentation_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pcl_segmentation_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcl_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pcl_segmentation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pcl_segmentation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(pcl_segmentation_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pcl_segmentation_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcl_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pcl_segmentation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pcl_segmentation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(pcl_segmentation_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pcl_segmentation_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcl_segmentation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcl_segmentation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pcl_segmentation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pcl_segmentation_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(pcl_segmentation_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pcl_segmentation_generate_messages_py geometry_msgs_generate_messages_py)
endif()
