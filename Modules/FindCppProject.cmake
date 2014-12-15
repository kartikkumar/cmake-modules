# Copyright (c) <year> <author> (<email>)
# Distributed under the MIT License.
# See accompanying file LICENSE.md or copy at http://opensource.org/licenses/MIT

if(CPPPROJECT_INCLUDE_DIRS)
  # in cache already
  set(CPPPROJECT_FOUND TRUE)
else(CPPPROJECT_INCLUDE_DIRS)

  find_path(CPPPROJECT_INCLUDE_DIR
    NAMES
      cppProject.hpp
    PATHS
      /usr/include
      /usr/local/include
      /opt/local/include
      /sw/include
      ${PROJECT_PATH}
      ${EXTERNAL_PATH}
    PATH_SUFFIXES
      CppProject include/CppProject
  )

  if(CPPPROJECT_INCLUDE_DIR)
    set(CPPPROJECT_INCLUDE_DIRS
      ${CPPPROJECT_INCLUDE_DIR}/..
    )
  endif(CPPPROJECT_INCLUDE_DIR)

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(CppProject DEFAULT_MSG CPPPROJECT_INCLUDE_DIRS)

  # show the CPPPROJECT_INCLUDE_DIRS variables only in the advanced view
  mark_as_advanced(CPPPROJECT_INCLUDE_DIRS)

endif(CPPPROJECT_INCLUDE_DIRS)