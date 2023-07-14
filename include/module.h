#pragma once

#include "interface.h"

class Module {

public:
    Module(Interface& interface) : interface_(interface) {}
    int doSomething(int, int);

private:
    Interface& interface_;
};
