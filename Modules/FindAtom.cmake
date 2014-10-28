# Copyright (c) 2014, K. Kumar (me@kartikkumar.com)
# All rights reserved.

if (ATOM_INCLUDE_DIRS)
  # in cache already
  set(ATOM_FOUND TRUE)
else (ATOM_INCLUDE_DIRS)

  find_path(ATOM_INCLUDE_DIR
    NAMES
      signature_of_atom_library
    PATHS
      /usr/include
      /usr/local/include
      /opt/local/include
      /sw/include
      /usr/local
      ${PROJECT_ROOT}
      ${PROJECT_ROOT}/..      
      PATH_SUFFIXES atom
  )

  set(ATOM_INCLUDE_DIRS
    ${ATOM_INCLUDE_DIR}
  )

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(Atom DEFAULT_MSG ATOM_INCLUDE_DIRS)

  # show the ATOM_INCLUDE_DIRS variables only in the advanced view
  mark_as_advanced(ATOM_INCLUDE_DIRS)

endif (ATOM_INCLUDE_DIRS)