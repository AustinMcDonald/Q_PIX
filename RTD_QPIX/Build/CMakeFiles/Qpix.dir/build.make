# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /n/holylfs02/LABS/guenette_lab/software/next/ups_products/cmake/v3_14_3/Linux64bit+3.10-2.17/bin/cmake

# The command to remove a file.
RM = /n/holylfs02/LABS/guenette_lab/software/next/ups_products/cmake/v3_14_3/Linux64bit+3.10-2.17/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build

# Include any dependencies generated for this target.
include CMakeFiles/Qpix.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Qpix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Qpix.dir/flags.make

CMakeFiles/Qpix.dir/source/ElectronHandler.cc.o: CMakeFiles/Qpix.dir/flags.make
CMakeFiles/Qpix.dir/source/ElectronHandler.cc.o: ../source/ElectronHandler.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Qpix.dir/source/ElectronHandler.cc.o"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Qpix.dir/source/ElectronHandler.cc.o -c /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/ElectronHandler.cc

CMakeFiles/Qpix.dir/source/ElectronHandler.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Qpix.dir/source/ElectronHandler.cc.i"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/ElectronHandler.cc > CMakeFiles/Qpix.dir/source/ElectronHandler.cc.i

CMakeFiles/Qpix.dir/source/ElectronHandler.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Qpix.dir/source/ElectronHandler.cc.s"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/ElectronHandler.cc -o CMakeFiles/Qpix.dir/source/ElectronHandler.cc.s

CMakeFiles/Qpix.dir/source/PixelResponse.cc.o: CMakeFiles/Qpix.dir/flags.make
CMakeFiles/Qpix.dir/source/PixelResponse.cc.o: ../source/PixelResponse.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Qpix.dir/source/PixelResponse.cc.o"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Qpix.dir/source/PixelResponse.cc.o -c /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/PixelResponse.cc

CMakeFiles/Qpix.dir/source/PixelResponse.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Qpix.dir/source/PixelResponse.cc.i"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/PixelResponse.cc > CMakeFiles/Qpix.dir/source/PixelResponse.cc.i

CMakeFiles/Qpix.dir/source/PixelResponse.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Qpix.dir/source/PixelResponse.cc.s"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/PixelResponse.cc -o CMakeFiles/Qpix.dir/source/PixelResponse.cc.s

CMakeFiles/Qpix.dir/source/Random.cc.o: CMakeFiles/Qpix.dir/flags.make
CMakeFiles/Qpix.dir/source/Random.cc.o: ../source/Random.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Qpix.dir/source/Random.cc.o"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Qpix.dir/source/Random.cc.o -c /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/Random.cc

CMakeFiles/Qpix.dir/source/Random.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Qpix.dir/source/Random.cc.i"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/Random.cc > CMakeFiles/Qpix.dir/source/Random.cc.i

CMakeFiles/Qpix.dir/source/Random.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Qpix.dir/source/Random.cc.s"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/Random.cc -o CMakeFiles/Qpix.dir/source/Random.cc.s

CMakeFiles/Qpix.dir/source/ReadG4txt.cc.o: CMakeFiles/Qpix.dir/flags.make
CMakeFiles/Qpix.dir/source/ReadG4txt.cc.o: ../source/ReadG4txt.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Qpix.dir/source/ReadG4txt.cc.o"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Qpix.dir/source/ReadG4txt.cc.o -c /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/ReadG4txt.cc

CMakeFiles/Qpix.dir/source/ReadG4txt.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Qpix.dir/source/ReadG4txt.cc.i"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/ReadG4txt.cc > CMakeFiles/Qpix.dir/source/ReadG4txt.cc.i

CMakeFiles/Qpix.dir/source/ReadG4txt.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Qpix.dir/source/ReadG4txt.cc.s"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/ReadG4txt.cc -o CMakeFiles/Qpix.dir/source/ReadG4txt.cc.s

CMakeFiles/Qpix.dir/source/XorShift256.cc.o: CMakeFiles/Qpix.dir/flags.make
CMakeFiles/Qpix.dir/source/XorShift256.cc.o: ../source/XorShift256.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Qpix.dir/source/XorShift256.cc.o"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Qpix.dir/source/XorShift256.cc.o -c /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/XorShift256.cc

CMakeFiles/Qpix.dir/source/XorShift256.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Qpix.dir/source/XorShift256.cc.i"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/XorShift256.cc > CMakeFiles/Qpix.dir/source/XorShift256.cc.i

CMakeFiles/Qpix.dir/source/XorShift256.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Qpix.dir/source/XorShift256.cc.s"
	/n/holylfs02/LABS/guenette_lab/software/next/ups_products/gcc/v7_3_0/Linux64bit+3.10-2.17/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/source/XorShift256.cc -o CMakeFiles/Qpix.dir/source/XorShift256.cc.s

# Object files for target Qpix
Qpix_OBJECTS = \
"CMakeFiles/Qpix.dir/source/ElectronHandler.cc.o" \
"CMakeFiles/Qpix.dir/source/PixelResponse.cc.o" \
"CMakeFiles/Qpix.dir/source/Random.cc.o" \
"CMakeFiles/Qpix.dir/source/ReadG4txt.cc.o" \
"CMakeFiles/Qpix.dir/source/XorShift256.cc.o"

# External object files for target Qpix
Qpix_EXTERNAL_OBJECTS =

libQpix.a: CMakeFiles/Qpix.dir/source/ElectronHandler.cc.o
libQpix.a: CMakeFiles/Qpix.dir/source/PixelResponse.cc.o
libQpix.a: CMakeFiles/Qpix.dir/source/Random.cc.o
libQpix.a: CMakeFiles/Qpix.dir/source/ReadG4txt.cc.o
libQpix.a: CMakeFiles/Qpix.dir/source/XorShift256.cc.o
libQpix.a: CMakeFiles/Qpix.dir/build.make
libQpix.a: CMakeFiles/Qpix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libQpix.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Qpix.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Qpix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Qpix.dir/build: libQpix.a

.PHONY : CMakeFiles/Qpix.dir/build

CMakeFiles/Qpix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Qpix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Qpix.dir/clean

CMakeFiles/Qpix.dir/depend:
	cd /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build /n/holylfs02/LABS/guenette_lab/users/amcdonald/Q_PIX/RTD_QPIX/Build/CMakeFiles/Qpix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Qpix.dir/depend
