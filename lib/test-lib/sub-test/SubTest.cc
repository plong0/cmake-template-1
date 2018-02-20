
#include "SubTest.h"

SubTest::SubTest() {
  std::cout << "[SubTest] Hello!" << std::endl;
}

SubTest::~SubTest() {
  std::cout << "[SubTest] Farewell!" << std::endl;
}

void SubTest::doSomething() {
  std::cout << "[SubTest] Gypsy ki-yay!" << std::endl; 
}
