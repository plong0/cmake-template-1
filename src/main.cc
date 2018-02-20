
#include <iostream>

#include "lib/test-lib/Test.h"

#include "sub-module/SubModule.h"

int main(int argc, const char * argv[]) {
  std::cout << "Hello World!" << std::endl;

  Test* test = new Test();
  SubModule* subModule = new SubModule();

  test->doSomething();

  subModule->doSomething();

  delete subModule;
  subModule = nullptr;

  delete test;
  test = nullptr;

  return 0;
}
