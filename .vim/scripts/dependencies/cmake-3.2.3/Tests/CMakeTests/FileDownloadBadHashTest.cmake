set(url "file:///home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Tests/CMakeTests/FileDownloadInput.png")
set(dir "/home/uber/dotfiles/.vim/scripts/dependencies/cmake-3.2.3/Tests/CMakeTests/downloads")

file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT 2
  STATUS status
  EXPECTED_HASH SHA1=5555555555555555555555555555555555555555
  )
