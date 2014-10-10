# Copyright (c) 2014, K. Kumar (me@kartikkumar.com)
# All rights reserved.

if (SGP4_INCLUDE_DIRS)
  # in cache already
  set(SGP4_FOUND TRUE)
else (SGP4_INCLUDE_DIRS)

  find_path(SGP4_BASE_DIR
    NAMES
      SGP4-VER.TLE
    PATHS
      /usr/include
      /usr/local/include
      /opt/local/include
      /sw/include
      /usr/local
      ${PROJECT_ROOT}
      ${PROJECT_ROOT}/..      
      PATH_SUFFIXES sgp4
  )

  set(SGP4_INCLUDE_DIRS ${SGP4_BASE_DIR})
  set(SGP4_LIBRARY_DIR ${SGP4_BASE_DIR}/libsgp4)
  set(SGP4_LIBRARY "sgp4")  

  link_directories(${SGP4_LIBRARY_DIR})  

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(SGP4 DEFAULT_MSG SGP4_INCLUDE_DIRS)

  # show the SGP4_INCLUDE_DIRS variables only in the advanced view
  mark_as_advanced(SGP4_INCLUDE_DIRS)

endif (SGP4_INCLUDE_DIRS)
