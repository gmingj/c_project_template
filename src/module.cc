
#include "module.h"

int Module::doSomething(int x, int y)
{
    int r = interface_.set(x+y);
    while (r-- > 0) {
        interface_.print();
    }
    return interface_.get();
}

