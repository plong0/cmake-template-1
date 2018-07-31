include_directories("${PROJECT_SOURCE_DIR}/lib")

add_subdirectory(sub-module)

add_executable(Test01 main.cc sub-module/SubModule.cc)
target_link_libraries(Test01 TestLib)
install (TARGETS Test01 DESTINATION ${PROJECT_SOURCE_DIR}/bin)
