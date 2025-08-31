# Install script for directory: C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/cpm_modules/shapelib/a995950de7c483318cb49c46205161ff77220e22

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/shapelib/shapelib-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/shapelib/shapelib-targets.cmake"
         "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/_deps/shapelib-build/CMakeFiles/Export/29ecd9b25fd2c0a895e02acd8b69bda5/shapelib-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/shapelib/shapelib-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/shapelib/shapelib-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/shapelib" TYPE FILE FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/_deps/shapelib-build/CMakeFiles/Export/29ecd9b25fd2c0a895e02acd8b69bda5/shapelib-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/shapelib" TYPE FILE FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/_deps/shapelib-build/CMakeFiles/Export/29ecd9b25fd2c0a895e02acd8b69bda5/shapelib-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/Debug/lib/shp_d.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/cpm_modules/shapelib/a995950de7c483318cb49c46205161ff77220e22/shapefil.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/_deps/shapelib-build/shapelib.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/User/qgroundcontrol/build-mscv/Desktop_Qt_6_8_3_MSVC2022_64bit-Debug/qtc_Ninja/_deps/shapelib-build/cmake/cmake_install.cmake")

endif()

