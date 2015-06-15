# Install script for directory: /home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/cmake-3.2.3" TYPE FILE FILES "/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Copyright.txt")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-3.2" TYPE DIRECTORY PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ DIR_PERMISSIONS OWNER_READ OWNER_EXECUTE OWNER_WRITE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES
    "/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Help"
    "/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Modules"
    "/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Templates"
    REGEX "/[^/]*\\.sh[^/]*$" PERMISSIONS OWNER_READ OWNER_EXECUTE OWNER_WRITE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Utilities/KWIML/cmake_install.cmake")
  include("/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Source/kwsys/cmake_install.cmake")
  include("/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Utilities/cmcompress/cmake_install.cmake")
  include("/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Utilities/cmjsoncpp/cmake_install.cmake")
  include("/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Source/cmake_install.cmake")
  include("/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Utilities/cmake_install.cmake")
  include("/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Tests/cmake_install.cmake")
  include("/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Auxiliary/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
