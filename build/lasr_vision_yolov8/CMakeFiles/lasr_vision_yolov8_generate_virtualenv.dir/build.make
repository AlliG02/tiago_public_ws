# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8

# Utility rule file for lasr_vision_yolov8_generate_virtualenv.

# Include the progress variables for this target.
include CMakeFiles/lasr_vision_yolov8_generate_virtualenv.dir/progress.make

CMakeFiles/lasr_vision_yolov8_generate_virtualenv: /home/k21066336/tiago_public_ws/devel/.private/lasr_vision_yolov8/share/lasr_vision_yolov8/venv
CMakeFiles/lasr_vision_yolov8_generate_virtualenv: install/venv
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Per-package virtualenv target"

/home/k21066336/tiago_public_ws/devel/.private/lasr_vision_yolov8/share/lasr_vision_yolov8/venv: venv/bin/activate
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Prepare relocated virtualenvs for develspace and installspace"
	mkdir -p /home/k21066336/tiago_public_ws/devel/.private/lasr_vision_yolov8/share/lasr_vision_yolov8/venv && cp -r venv/* /home/k21066336/tiago_public_ws/devel/.private/lasr_vision_yolov8/share/lasr_vision_yolov8/venv
	mkdir -p install/venv && cp -r venv/* install/venv
	catkin_generated/env_cached.sh rosrun catkin_virtualenv venv_relocate /home/k21066336/tiago_public_ws/devel/.private/lasr_vision_yolov8/share/lasr_vision_yolov8/venv --target-dir /home/k21066336/tiago_public_ws/devel/.private/lasr_vision_yolov8/share/lasr_vision_yolov8/venv
	catkin_generated/env_cached.sh rosrun catkin_virtualenv venv_relocate install/venv --target-dir /home/k21066336/tiago_public_ws/install/share/lasr_vision_yolov8/venv

install/venv: /home/k21066336/tiago_public_ws/devel/.private/lasr_vision_yolov8/share/lasr_vision_yolov8/venv
	@$(CMAKE_COMMAND) -E touch_nocreate install/venv

venv/bin/activate: venv/bin/python
venv/bin/activate: /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8/requirements.txt
venv/bin/activate: /overlay_ws/src/catkin_virtualenv/catkin_virtualenv/requirements.txt
venv/bin/activate: /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8/requirements.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Install requirements to /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/venv"
	catkin_generated/env_cached.sh rosrun catkin_virtualenv venv_install venv --requirements /overlay_ws/src/catkin_virtualenv/catkin_virtualenv/requirements.txt /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8/requirements.txt --extra-pip-args \"-qq\ --retries\ 10\ --timeout\ 30\"

venv/bin/python:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generate virtualenv in /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/venv"
	catkin_generated/env_cached.sh rosrun catkin_virtualenv venv_init venv --python python3.10 --use-system-packages --extra-pip-args \"-qq\ --retries\ 10\ --timeout\ 30\"

/home/k21066336/tiago_public_ws/src/lasr_vision_yolov8/requirements.txt: venv/bin/python
/home/k21066336/tiago_public_ws/src/lasr_vision_yolov8/requirements.txt: /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8/requirements.in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Lock input requirements if they don't exist"
	cd /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8 && /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/catkin_generated/env_cached.sh rosrun catkin_virtualenv venv_lock /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/venv --package-name lasr_vision_yolov8 --input-requirements requirements.in --no-overwrite --extra-pip-args \"-qq\ --retries\ 10\ --timeout\ 30\"

lasr_vision_yolov8_generate_virtualenv: CMakeFiles/lasr_vision_yolov8_generate_virtualenv
lasr_vision_yolov8_generate_virtualenv: /home/k21066336/tiago_public_ws/devel/.private/lasr_vision_yolov8/share/lasr_vision_yolov8/venv
lasr_vision_yolov8_generate_virtualenv: install/venv
lasr_vision_yolov8_generate_virtualenv: venv/bin/activate
lasr_vision_yolov8_generate_virtualenv: venv/bin/python
lasr_vision_yolov8_generate_virtualenv: /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8/requirements.txt
lasr_vision_yolov8_generate_virtualenv: CMakeFiles/lasr_vision_yolov8_generate_virtualenv.dir/build.make

.PHONY : lasr_vision_yolov8_generate_virtualenv

# Rule to build all files generated by this target.
CMakeFiles/lasr_vision_yolov8_generate_virtualenv.dir/build: lasr_vision_yolov8_generate_virtualenv

.PHONY : CMakeFiles/lasr_vision_yolov8_generate_virtualenv.dir/build

CMakeFiles/lasr_vision_yolov8_generate_virtualenv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lasr_vision_yolov8_generate_virtualenv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lasr_vision_yolov8_generate_virtualenv.dir/clean

CMakeFiles/lasr_vision_yolov8_generate_virtualenv.dir/depend:
	cd /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8 /home/k21066336/tiago_public_ws/src/lasr_vision_yolov8 /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8 /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8 /home/k21066336/tiago_public_ws/build/lasr_vision_yolov8/CMakeFiles/lasr_vision_yolov8_generate_virtualenv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lasr_vision_yolov8_generate_virtualenv.dir/depend

