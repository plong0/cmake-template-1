

#include "Test.h"

Test::Test() {
  std::cout << "[Test] Hello!" << std::endl;
  subTest = new SubTest();
}

Test::~Test() {
  delete subTest;
  subTest = nullptr;
  std::cout << "[Test] Farewell!" << std::endl;
}

void Test::doSomething() {
  std::cout << "[Test] Yippee ki-yay!" << std::endl; 
  subTest->doSomething();
}
