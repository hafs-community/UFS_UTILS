# This is the CMake file for building the docs directory of the UFS_UTILS
# lsm_routines for the noah land surface modeel.
#
# Clara Draper, April, 2021.

# Create doxyfile.
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile @ONLY)

# Build documentation with target all.
add_custom_target(noah_doc ALL
  ${DOXYGEN_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
  COMMENT "Generating API Documentation with Doxygen" VERBATIM)

# Ensure top-level docs have been generated.
add_dependencies(noah_doc lsm_routines_doc)
