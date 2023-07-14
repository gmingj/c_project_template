#include <gtest/gtest.h>
#include <gmock/gmock.h>

#include "module.h"

using ::testing::Return;
using ::testing::_;

class MockInterface : public Interface {

public:
    MOCK_METHOD(int, set, (int), (override));
    MOCK_METHOD(int, get, (), (override));
    MOCK_METHOD(void, print, (), (override));
};

TEST(ModuleTest, case1) {
    MockInterface mock;
    EXPECT_CALL(mock, set(3))
        .WillOnce(Return(3));
    EXPECT_CALL(mock, print)
        .Times(3);
    EXPECT_CALL(mock, get())
        .WillOnce(Return(3));

    Module mod(mock);
    EXPECT_EQ(3, mod.doSomething(1,2));
}
