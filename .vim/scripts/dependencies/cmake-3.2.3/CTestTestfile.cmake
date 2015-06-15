# CMake generated Testfile for 
# Source directory: /home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3
# Build directory: /home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Tests/EnforceConfig.cmake")
add_test(SystemInformationNew "/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/bin/cmake" "--system-information" "-G" "Unix Makefiles")
subdirs(Utilities/KWIML)
subdirs(Source/kwsys)
subdirs(Utilities/cmcompress)
subdirs(Utilities/cmjsoncpp)
subdirs(Source)
subdirs(Utilities)
subdirs(Tests)
subdirs(Auxiliary)
