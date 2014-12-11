# Copyright (c) 2014, K. Kumar (me@kartikkumar.com)
# Distributed under the MIT License.
# See accompanying file LICENSE.md or copy at http://opensource.org/licenses/MIT

if(KEPLERIANTOOLBOX_INCLUDE_DIRS)
  # in cache already
  set(KEPLERIANTOOLBOX_FOUND TRUE)
else(KEPLERIANTOOLBOX_INCLUDE_DIRS)

  find_path(KEPLERIANTOOLBOX_INCLUDE_DIR
    NAMES
      keplerian_toolbox.h
    PATHS
      /usr/include
      /usr/local/include
      /opt/local/include
      /sw/include
      /usr/local
      ${PROJECT_PATH}
      ${EXTERNAL_PATH}
    PATH_SUFFIXES
      keplerian_toolbox keplerian_toolbox/src KeplerianToolbox/src/keplerian_toolbox/src pykep pykep/src PyKEP/src/pykep/src
  )

  find_library(KEPLERIANTOOLBOX_LIB_PATH
    NAMES
      keplerian_toolbox_static
      keplerian_toolbox
    PATHS
      /usr/include
      /usr/local/include
      /opt/local/include
      /sw/include
      /usr/local
      ${PROJECT_PATH}
      ${EXTERNAL_PATH}
    PATH_SUFFIXES
      keplerian_toolbox/src keplerian_toolbox/build pykep/src/ pykep/build
    NO_DEFAULT_PATH
  )

  if(KEPLERIANTOOLBOX_INCLUDE_DIR AND KEPLERIANTOOLBOX_LIB_PATH)
    set(KEPLERIANTOOLBOX_INCLUDE_DIRS
      ${KEPLERIANTOOLBOX_INCLUDE_DIR}
    )
    get_filename_component(KEPLERIANTOOLBOX_LIBRARY_DIR ${KEPLERIANTOOLBOX_LIB_PATH} DIRECTORY)
    set(KEPLERIANTOOLBOX_LIBRARY "keplerian_toolbox_static")
  endif(KEPLERIANTOOLBOX_INCLUDE_DIR AND KEPLERIANTOOLBOX_LIB_PATH)

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(KeplerianToolbox DEFAULT_MSG KEPLERIANTOOLBOX_INCLUDE_DIRS)

  # show the KEPLERIANTOOLBOX_INCLUDE_DIRS variables only in the advanced view
  mark_as_advanced(KEPLERIANTOOLBOX_INCLUDE_DIRS)

endif(KEPLERIANTOOLBOX_INCLUDE_DIRS)