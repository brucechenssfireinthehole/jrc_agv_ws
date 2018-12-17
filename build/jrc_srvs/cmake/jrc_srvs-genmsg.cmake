# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jrc_srvs: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jrc_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv" NAME_WE)
add_custom_target(_jrc_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jrc_srvs" "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv" ""
)

get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv" NAME_WE)
add_custom_target(_jrc_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jrc_srvs" "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(jrc_srvs
  "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jrc_srvs
)
_generate_srv_cpp(jrc_srvs
  "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jrc_srvs
)

### Generating Module File
_generate_module_cpp(jrc_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jrc_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jrc_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jrc_srvs_generate_messages jrc_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv" NAME_WE)
add_dependencies(jrc_srvs_generate_messages_cpp _jrc_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv" NAME_WE)
add_dependencies(jrc_srvs_generate_messages_cpp _jrc_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jrc_srvs_gencpp)
add_dependencies(jrc_srvs_gencpp jrc_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jrc_srvs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(jrc_srvs
  "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jrc_srvs
)
_generate_srv_eus(jrc_srvs
  "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jrc_srvs
)

### Generating Module File
_generate_module_eus(jrc_srvs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jrc_srvs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jrc_srvs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jrc_srvs_generate_messages jrc_srvs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv" NAME_WE)
add_dependencies(jrc_srvs_generate_messages_eus _jrc_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv" NAME_WE)
add_dependencies(jrc_srvs_generate_messages_eus _jrc_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jrc_srvs_geneus)
add_dependencies(jrc_srvs_geneus jrc_srvs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jrc_srvs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(jrc_srvs
  "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jrc_srvs
)
_generate_srv_lisp(jrc_srvs
  "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jrc_srvs
)

### Generating Module File
_generate_module_lisp(jrc_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jrc_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jrc_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jrc_srvs_generate_messages jrc_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv" NAME_WE)
add_dependencies(jrc_srvs_generate_messages_lisp _jrc_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv" NAME_WE)
add_dependencies(jrc_srvs_generate_messages_lisp _jrc_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jrc_srvs_genlisp)
add_dependencies(jrc_srvs_genlisp jrc_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jrc_srvs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(jrc_srvs
  "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jrc_srvs
)
_generate_srv_nodejs(jrc_srvs
  "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jrc_srvs
)

### Generating Module File
_generate_module_nodejs(jrc_srvs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jrc_srvs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jrc_srvs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jrc_srvs_generate_messages jrc_srvs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv" NAME_WE)
add_dependencies(jrc_srvs_generate_messages_nodejs _jrc_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv" NAME_WE)
add_dependencies(jrc_srvs_generate_messages_nodejs _jrc_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jrc_srvs_gennodejs)
add_dependencies(jrc_srvs_gennodejs jrc_srvs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jrc_srvs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(jrc_srvs
  "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jrc_srvs
)
_generate_srv_py(jrc_srvs
  "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jrc_srvs
)

### Generating Module File
_generate_module_py(jrc_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jrc_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jrc_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jrc_srvs_generate_messages jrc_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth_multi.srv" NAME_WE)
add_dependencies(jrc_srvs_generate_messages_py _jrc_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brucechen/nav_ws/src/jrc_srvs/srv/smooth.srv" NAME_WE)
add_dependencies(jrc_srvs_generate_messages_py _jrc_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jrc_srvs_genpy)
add_dependencies(jrc_srvs_genpy jrc_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jrc_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jrc_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jrc_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jrc_srvs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jrc_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jrc_srvs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jrc_srvs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jrc_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jrc_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jrc_srvs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jrc_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jrc_srvs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jrc_srvs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jrc_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jrc_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jrc_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jrc_srvs_generate_messages_py std_msgs_generate_messages_py)
endif()
