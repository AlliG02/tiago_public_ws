# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lasr_shapely: 0 messages, 2 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lasr_shapely_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv" NAME_WE)
add_custom_target(_lasr_shapely_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_shapely" "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv" ""
)

get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv" NAME_WE)
add_custom_target(_lasr_shapely_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lasr_shapely" "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(lasr_shapely
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_shapely
)
_generate_srv_cpp(lasr_shapely
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_shapely
)

### Generating Module File
_generate_module_cpp(lasr_shapely
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_shapely
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lasr_shapely_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lasr_shapely_generate_messages lasr_shapely_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv" NAME_WE)
add_dependencies(lasr_shapely_generate_messages_cpp _lasr_shapely_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv" NAME_WE)
add_dependencies(lasr_shapely_generate_messages_cpp _lasr_shapely_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_shapely_gencpp)
add_dependencies(lasr_shapely_gencpp lasr_shapely_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_shapely_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(lasr_shapely
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_shapely
)
_generate_srv_eus(lasr_shapely
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_shapely
)

### Generating Module File
_generate_module_eus(lasr_shapely
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_shapely
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lasr_shapely_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lasr_shapely_generate_messages lasr_shapely_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv" NAME_WE)
add_dependencies(lasr_shapely_generate_messages_eus _lasr_shapely_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv" NAME_WE)
add_dependencies(lasr_shapely_generate_messages_eus _lasr_shapely_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_shapely_geneus)
add_dependencies(lasr_shapely_geneus lasr_shapely_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_shapely_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(lasr_shapely
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_shapely
)
_generate_srv_lisp(lasr_shapely
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_shapely
)

### Generating Module File
_generate_module_lisp(lasr_shapely
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_shapely
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lasr_shapely_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lasr_shapely_generate_messages lasr_shapely_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv" NAME_WE)
add_dependencies(lasr_shapely_generate_messages_lisp _lasr_shapely_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv" NAME_WE)
add_dependencies(lasr_shapely_generate_messages_lisp _lasr_shapely_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_shapely_genlisp)
add_dependencies(lasr_shapely_genlisp lasr_shapely_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_shapely_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(lasr_shapely
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_shapely
)
_generate_srv_nodejs(lasr_shapely
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_shapely
)

### Generating Module File
_generate_module_nodejs(lasr_shapely
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_shapely
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lasr_shapely_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lasr_shapely_generate_messages lasr_shapely_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv" NAME_WE)
add_dependencies(lasr_shapely_generate_messages_nodejs _lasr_shapely_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv" NAME_WE)
add_dependencies(lasr_shapely_generate_messages_nodejs _lasr_shapely_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_shapely_gennodejs)
add_dependencies(lasr_shapely_gennodejs lasr_shapely_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_shapely_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(lasr_shapely
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_shapely
)
_generate_srv_py(lasr_shapely
  "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_shapely
)

### Generating Module File
_generate_module_py(lasr_shapely
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_shapely
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lasr_shapely_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lasr_shapely_generate_messages lasr_shapely_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointInPolygon2D.srv" NAME_WE)
add_dependencies(lasr_shapely_generate_messages_py _lasr_shapely_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/k21066336/tiago_public_ws/src/legacy/lasr_shapely/srv/PointsInPolygon2D.srv" NAME_WE)
add_dependencies(lasr_shapely_generate_messages_py _lasr_shapely_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lasr_shapely_genpy)
add_dependencies(lasr_shapely_genpy lasr_shapely_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lasr_shapely_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_shapely)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lasr_shapely
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_shapely)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lasr_shapely
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_shapely)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lasr_shapely
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_shapely)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lasr_shapely
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_shapely)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_shapely\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_shapely
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_shapely")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lasr_shapely
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
