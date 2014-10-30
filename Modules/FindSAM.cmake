# Copyright (c) 2014, K. Kumar (me@kartikkumar.com)
# All rights reserved.

if (SAM_INCLUDE_DIRS)
  # in cache already
  set(SAM_FOUND TRUE)
else (SAM_INCLUDE_DIRS)

  find_path(SAM_INCLUDE_DIR
    NAMES
      sam.hpp
    PATHS
      /usr/include
      /usr/local/include
      /opt/local/include
      /sw/include
      /usr/local
      ${PROJECT_PATH}
      ${PROJECT_PATH}/..
      ${EXTERNAL_PATH}
    PATH_SUFFIXES
      SAM sam/include/SAM SAM/src/sam/include/SAM
  )

  set(SAM_INCLUDE_DIRS
      ${SAM_INCLUDE_DIR}/..
  )

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(SAM DEFAULT_MSG SAM_INCLUDE_DIRS)

  # show the SAM_INCLUDE_DIRS variables only in the advanced view
  mark_as_advanced(SAM_INCLUDE_DIRS)

endif (SAM_INCLUDE_DIRS)