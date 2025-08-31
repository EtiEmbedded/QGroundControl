# Install script for directory: C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/cpm_modules/libevents/1ea2d34e1cc3658140fb45034b187e87d60c899b/libs/cpp/parse

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/Debug/lib/libevents_parser.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libevents/parse" TYPE FILE FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/cpm_modules/libevents/1ea2d34e1cc3658140fb45034b187e87d60c899b/libs/cpp/parse/parser.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libevents/parse/nlohmann" TYPE FILE FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/cpm_modules/libevents/1ea2d34e1cc3658140fb45034b187e87d60c899b/libs/cpp/parse/nlohmann/json_fwd.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/Debug/lib/libevents_health_and_arming_checks.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libevents/parse" TYPE FILE FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/cpm_modules/libevents/1ea2d34e1cc3658140fb45034b187e87d60c899b/libs/cpp/parse/health_and_arming_checks.h")
endif()

