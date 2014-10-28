# Copyright (c) 2014, K. Kumar (me@kartikkumar.com)
# All rights reserved.

if (PYKEP_INCLUDE_DIRS)
  # in cache already
  set(PYKEP_FOUND TRUE)
else (PYKEP_INCLUDE_DIRS)

  find_path(PYKEP_BASE_DIR
    NAMES
      signature_of_pykep_library
    PATHS
      /usr/include
      /usr/local/include
      /opt/local/include
      /sw/include
      /usr/local
      ${PROJECT_ROOT}
      ${PROJECT_ROOT}/..      
      PATH_SUFFIXES pykep
  )

  set(PYKEP_INCLUDE_DIRS ${PYKEP_BASE_DIR})
  set(PYKEP_LIBRARY_DIR ${PYKEP_BASE_DIR}/buid/libkeplerian_toolbox_static)
  set(PYKEP_LIBRARY "keplerian_toolbox_static")  

  link_directories(${PYKEP_LIBRARY_DIR})  

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(PyKEP DEFAULT_MSG PYKEP_INCLUDE_DIRS)

  # show the PYKEP_INCLUDE_DIRS variables only in the advanced view
  mark_as_advanced(PYKEP_INCLUDE_DIRS)

endif (PYKEP_INCLUDE_DIRS)
