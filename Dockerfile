FROM ubuntu:18.04

RUN apt-get update && apt-get -y install cmake build-essential git

RUN mkdir -p /home/gtest
WORKDIR /home/gtest
RUN git clone https://github.com/google/googletest.git -b release-1.11.0

WORKDIR /home/gtest/googletest 
RUN mkdir -p /home/gtest/googletest/build
WORKDIR /home/gtest/googletest/build
RUN cmake ..
RUN make
RUN make install

RUN mkdir -p /home/app
COPY . /home/app
WORKDIR /home/app
RUN g++ -std=c++0x /home/app/src/main.cpp -lgtest -lgtest_main -lpthread -o proj
RUN ./proj

ENTRYPOINT /bin/bash

