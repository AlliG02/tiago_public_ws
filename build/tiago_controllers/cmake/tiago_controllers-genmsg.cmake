# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tiago_controllers: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tiago_controllers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv" NAME_WE)
add_custom_target(_tiago_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiago_controllers" "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(tiago_controllers
  "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiago_controllers
)

### Generating Module File
_generate_module_cpp(tiago_controllers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiago_controllers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tiago_controllers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tiago_controllers_generate_messages tiago_controllers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv" NAME_WE)
add_dependencies(tiago_controllers_generate_messages_cpp _tiago_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiago_controllers_gencpp)
add_dependencies(tiago_controllers_gencpp tiago_controllers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiago_controllers_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(tiago_controllers
  "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tiago_controllers
)

### Generating Module File
_generate_module_eus(tiago_controllers
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tiago_controllers
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tiago_controllers_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tiago_controllers_generate_messages tiago_controllers_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv" NAME_WE)
add_dependencies(tiago_controllers_generate_messages_eus _tiago_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiago_controllers_geneus)
add_dependencies(tiago_controllers_geneus tiago_controllers_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiago_controllers_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(tiago_controllers
  "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiago_controllers
)

### Generating Module File
_generate_module_lisp(tiago_controllers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiago_controllers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tiago_controllers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tiago_controllers_generate_messages tiago_controllers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv" NAME_WE)
add_dependencies(tiago_controllers_generate_messages_lisp _tiago_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiago_controllers_genlisp)
add_dependencies(tiago_controllers_genlisp tiago_controllers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiago_controllers_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(tiago_controllers
  "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tiago_controllers
)

### Generating Module File
_generate_module_nodejs(tiago_controllers
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tiago_controllers
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tiago_controllers_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tiago_controllers_generate_messages tiago_controllers_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv" NAME_WE)
add_dependencies(tiago_controllers_generate_messages_nodejs _tiago_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiago_controllers_gennodejs)
add_dependencies(tiago_controllers_gennodejs tiago_controllers_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiago_controllers_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(tiago_controllers
  "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_controllers
)

### Generating Module File
_generate_module_py(tiago_controllers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_controllers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tiago_controllers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tiago_controllers_generate_messages tiago_controllers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/tiago_controllers/srv/ArmTorsoPos.srv" NAME_WE)
add_dependencies(tiago_controllers_generate_messages_py _tiago_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiago_controllers_genpy)
add_dependencies(tiago_controllers_genpy tiago_controllers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiago_controllers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiago_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiago_controllers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tiago_controllers_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tiago_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tiago_controllers
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tiago_controllers_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiago_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiago_controllers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tiago_controllers_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tiago_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tiago_controllers
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tiago_controllers_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_controllers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_controllers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_controllers
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_controllers")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_controllers
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tiago_controllers_generate_messages_py std_msgs_generate_messages_py)
endif()
