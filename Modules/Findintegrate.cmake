# Copyright (c) 2018 K. Kumar (me@kartikkumar.com)
# Distributed under the MIT License.
# See accompanying file LICENSE or copy at http://opensource.org/licenses/MIT

if(INTEGRATE_INCLUDE_DIRS)
  # in cache already
  set(INTEGRATE_FOUND TRUE)
else(INTEGRATE_INCLUDE_DIRS)

  find_path(INTEGRATE_INCLUDE_DIR
    NAMES
      integrate.hpp
    PATHS
      /usr/include
      /usr/local/include
      /opt/local/include
      /sw/include
      ${PROJECT_PATH}/..
      ${EXTERNAL_PATH}
    PATH_SUFFIXES
      integrate integrate/include/integrate integrate/src/integrate/include/integrate
  )

  if(INTEGRATE_INCLUDE_DIR)
    set(INTEGRATE_INCLUDE_DIRS
      ${INTEGRATE_INCLUDE_DIR}/..
    )
  endif(INTEGRATE_INCLUDE_DIR)

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(integrate DEFAULT_MSG INTEGRATE_INCLUDE_DIRS)

  # show the INTEGRATE_INCLUDE_DIRS variables only in the advanced view
  mark_as_advanced(INTEGRATE_INCLUDE_DIRS)

endif(INTEGRATE_INCLUDE_DIRS)