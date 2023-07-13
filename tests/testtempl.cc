#include <gtest/gtest.h>
#include <gmock/gmock.h>

TEST(Templ, Case1)
{
    testing::internal::CaptureStdout();
    std::cout <<"My test";
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ("My test", output);
}
