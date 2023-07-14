#pragma once

class Interface {
public:
    virtual ~Interface() {}
    virtual int set(int) = 0;
    virtual int get() = 0;
    virtual void print() = 0;
};
