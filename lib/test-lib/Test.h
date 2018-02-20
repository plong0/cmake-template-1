

#ifndef TEST_LIB_H
#define TEST_LIB_H

#include <iostream>

#include "sub-test/SubTest.h"

class Test {
  public:
    Test();
    ~Test();

    void doSomething();

  protected:
    SubTest* subTest;
};

#endif
