#include <iostream>
#include "matrix.h"
#include <chrono>

int main() {
  Matrix mat(4,4);
  Matrix mat2(4,4);
  for(int i=0;i<4;i++) {
    for (int j = 0; j < 4; j++)
      std::cout<<mat.matrix[i][j] << ' ';
    cout << endl;
  }
  cout << endl;
  for(int i=0;i<4;i++) {
    for (int j = 0; j < 4; j++)
      std::cout<<mat2.matrix[i][j] << ' ';
    cout << endl;
  }
  cout << endl;
  auto start = chrono::high_resolution_clock::now();
  Matrix mat3 = Multiply(mat,mat2);
  auto finish = chrono::high_resolution_clock::now();
  chrono::duration<double> period = finish - start;
  cout << period.count() << " seconds" << endl;

  for(int i=0;i<4;i++) {
    for (int j = 0; j < 4; j++)
      std::cout<<mat3.matrix[i][j] << ' ';
    cout << endl;
  }
  start = chrono::high_resolution_clock::now();
  Matrix mat4 = MultiplyKThreads(mat,mat2,2,4);
  finish = chrono::high_resolution_clock::now();
  period = finish - start;
  cout << period.count() << " seconds" << endl;
  
  cout << endl;
  for(int i=0;i<4;i++) {
    for (int j = 0; j < 4; j++)
      std::cout<<mat4.matrix[i][j] << ' ';
    cout << endl;
  }
  return 0;
}
