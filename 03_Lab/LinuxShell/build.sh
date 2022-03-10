#!/bin/bash

g++ -c -o Number/number.o Number/number.cpp -fPIC
ar rvs Number/libNumber.a Number/number.o 

g++ -c -o Vector/vector.o -INumber/ Vector/vector.cpp -fPIC
g++ -shared -o Vector/libVector.so Vector/vector.o Number/libNumber.a -fPIC

g++ -o execute -INumber -IVector main.cpp ./Number/libNumber.a ./Vector/libVector.so

./execute

