#ifndef SUBMODULE_H
#define SUBMODULE_H

#include <iostream>

class SubModule {
  public:
    SubModule();
    ~SubModule();

    void doSomething();

    std::string getContent();
    bool hasContent();
    void setContent(std::string content);

    std::string content;
};

#endif
