#include "SubModule.h"

SubModule::SubModule() {
  std::cout << "[SubModule] Hi hi hi" << std::endl;
  content = "Foo";
}
SubModule::~SubModule() {
  std::cout << "[SubModule] Bye bye bye" << std::endl;
}

void SubModule::doSomething() {
  std::cout << "[SubModule] Doing something..." << std::endl;
}
