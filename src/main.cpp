#include <gtest/gtest.h>
#include <iostream>
 
int MyAdd(int a, int b) {
  return a + b;
}
 
TEST(AddTest, PositiveValue) {
  EXPECT_EQ(3, MyAdd(1, 2));
}
 
TEST(AddTest, NegativeValue) {
  EXPECT_EQ(-5, MyAdd(-2, -3));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}


