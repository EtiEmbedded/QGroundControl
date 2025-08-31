# Install script for directory: C:/Users/User/qgroundcontrol/src

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
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/ADSB/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/AnalyzeView/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/Android/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/API/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/AutoPilotPlugins/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/Camera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/Comms/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/FactSystem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/FirmwarePlugin/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/FlightDisplay/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/FlightMap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/FollowMe/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/Gimbal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/GPS/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/Joystick/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/MAVLink/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/MissionManager/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/PositionManager/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/QmlControls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/Settings/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/Terrain/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/UI/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/Utilities/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/UTMSP/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/Vehicle/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/VideoManager/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/Viewer3D/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/src/QtLocationPlugin/cmake_install.cmake")
endif()

