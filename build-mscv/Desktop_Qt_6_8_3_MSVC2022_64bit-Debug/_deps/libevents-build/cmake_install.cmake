# Install script for directory: C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/cpm_modules/libevents/1ea2d34e1cc3658140fb45034b187e87d60c899b/libs/cpp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/staging")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/_deps/libevents-build/common/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/_deps/libevents-build/parse/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/_deps/libevents-build/protocol/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libevents/libevents.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libevents/libevents.cmake"
         "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/_deps/libevents-build/CMakeFiles/Export/9fa0c39ef44e80cea247a4cab7874ecc/libevents.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libevents/libevents-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libevents/libevents.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libevents" TYPE FILE FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/_deps/libevents-build/CMakeFiles/Export/9fa0c39ef44e80cea247a4cab7874ecc/libevents.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libevents" TYPE FILE FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/_deps/libevents-build/CMakeFiles/Export/9fa0c39ef44e80cea247a4cab7874ecc/libevents-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libevents" TYPE FILE FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/_deps/libevents-build/libeventsConfig.cmake")
endif()

