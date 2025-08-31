# Install script for directory: C:/Users/User/qgroundcontrol/src/VideoManager/VideoReceiver/GStreamer

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/staging")
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
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/VideoManager/VideoReceiver/GStreamer/gstqml6gl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/VideoManager/VideoReceiver/GStreamer/gstqgc/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE DIRECTORY FILES "C:/gstreamer/1.0/msvc_x86_64//bin/" FILES_MATCHING REGEX "/[^/]*\\.dll$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gio/modules" TYPE DIRECTORY FILES "C:/gstreamer/1.0/msvc_x86_64//lib/gio/modules/" FILES_MATCHING REGEX "/[^/]*\\.dll$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gstreamer-1.0" TYPE DIRECTORY FILES "C:/gstreamer/1.0/msvc_x86_64//lib/gstreamer-1.0/" FILES_MATCHING REGEX "/[^/]*\\.dll$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/gstreamer-1.0" TYPE DIRECTORY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "C:/gstreamer/1.0/msvc_x86_64//libexec/gstreamer-1.0/" FILES_MATCHING REGEX "/[^/]*\\.exe$")
endif()

