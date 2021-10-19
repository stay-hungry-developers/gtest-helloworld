all: ./src/main.cpp
	g++ -std=c++0x ./src/main.cpp -lgtest -lgtest_main -o proj.out
clean:
	rm proj.out

