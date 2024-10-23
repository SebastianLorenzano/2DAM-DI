# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appintroductionQt_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appintroductionQt_autogen.dir\\ParseCache.txt"
  "appintroductionQt_autogen"
  )
endif()
