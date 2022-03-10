
g++ -c -o Number/number.o Number/number.cpp -fPIC
ar rvs Number/libNumber.lib Number/number.o 

g++ -c -o Vector/vector.o -INumber/ Vector/vector.cpp -fPIC
g++ -shared -o Vector/libVector.dll Vector/vector.o Number/libNumber.lib -fPIC

g++ -o execute.exe -INumber -IVector main.cpp ./Number/libNumber.lib ./Vector/libVector.dll

./execute.exe

