# CMake generated Testfile for 
# Source directory: /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8
# Build directory: /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_lasr_vision_yolov8_venv_check_lasr_vision_yolov8-requirements "/home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/test_results/lasr_vision_yolov8/venv_check-lasr_vision_yolov8-requirements.xml" "--working-dir" "/home/k21066336/tiago_public_ws/build/lasr_vision_yolov8" "--return-code" "/home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/catkin_generated/env_cached.sh rosrun catkin_virtualenv venv_check venv --requirements /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8/requirements.txt         --extra-pip-args \"\\\"-qq --retries 10 --timeout 30\\\"\"         --xunit-output /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/test_results/lasr_vision_yolov8/venv_check-lasr_vision_yolov8-requirements.xml")
set_tests_properties(_ctest_lasr_vision_yolov8_venv_check_lasr_vision_yolov8-requirements PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/overlay_ws/src/catkin_virtualenv/catkin_virtualenv/cmake/catkin_generate_virtualenv.cmake;157;catkin_run_tests_target;/home/k21066336/tiago_public_ws/src/lasr_vision_yolov8/CMakeLists.txt;20;catkin_generate_virtualenv;/home/k21066336/tiago_public_ws/src/lasr_vision_yolov8/CMakeLists.txt;0;")
subdirs("gtest")
