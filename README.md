# gtest-helloworld
## how to install
```
git clone https://github.com/google/googletest.git -b release-1.11.0
cd googletest        # Main directory of the cloned repository.
mkdir build          # Create a directory to hold the build output.
cd build
cmake ..             # Generate native build scripts for GoogleTest.
make
sudo make install    # Install in /usr/local/ by default
```

## How to build
```
g++ -std=c++0x ./src/main.cpp -lgtest -lgtest_main -o proj
./proj
```

## Build by `make`
```
g++ -std=c++0x ./src/main.cpp -lgtest -lgtest_main -o proj.out
./proj.out
```

## Build by `cmake`
```
cd build
cmake ..
make
make test
```

or

```
./registerer_test
```

