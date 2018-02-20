add_subdirectory(sub-test)
add_library(TestLib Test.cc sub-test/SubTest.cc)
