execute_process(COMMAND "/home/k21066336/tiago_public_ws/build/find_person_and_ask_open_door/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/k21066336/tiago_public_ws/build/find_person_and_ask_open_door/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
