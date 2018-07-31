#include "SubModule.h"

SubModule::SubModule() {
  setContent("Foo");
}
SubModule::~SubModule() {
}

void SubModule::doSomething() {
  std::cout << "[SubModule] Doing something ..." << std::endl;
  if (hasContent()) {
    std::cout << "[SubModule] has Content: '" << getContent() << "'" << std::endl;
  }
  else {
    std::cout << "[SubModule] has No Content!" << std::endl;
  } 
}

std::string SubModule::getContent() {
  return this->content;
}
bool SubModule::hasContent() {
  return (this->content != "");
}
void SubModule::setContent(std::string content) {
  this->content = content;
}
