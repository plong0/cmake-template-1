set(UNIT_TEST_LIST
  sub-module/SubModule
  )
 
foreach(NAME IN LISTS UNIT_TEST_LIST)
  list(APPEND UNIT_TEST_SOURCE_LIST
    ${NAME}.test.cc)
  list(APPEND SOURCE_LIST
    ../src/${NAME}.cc)
endforeach()
 
set(TARGET_NAME Test01-tests)
 
add_executable(${TARGET_NAME}
  main.test.cpp
  ${UNIT_TEST_SOURCE_LIST}
  ${SOURCE_LIST})
 
target_include_directories(${TARGET_NAME}
  PUBLIC ../externals/)

target_include_directories(${TARGET_NAME}
  PUBLIC ../src/)
 
add_test(
  NAME ${TARGET_NAME}
  COMMAND ${TARGET_NAME})