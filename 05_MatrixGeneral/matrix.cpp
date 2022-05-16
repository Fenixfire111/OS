#include <cstdlib>
#include "matrix.h"
#include <ctime>
#include<iostream>

const int kThreadNumber = 5;

Matrix::Matrix(int rows, int columns): rows(rows), columns(columns) {
  srand(time(nullptr));
  matrix = vector<vector<double>>(rows, vector<double>(columns, 0));
  for (int kI = 0; kI < rows; ++kI) {
    for (int kJ = 0; kJ < columns; ++kJ) {
      matrix[kI][kJ] = rand() % 100;
    }
  }

}
Matrix Multiply(const Matrix& mat1, const Matrix&  mat2){

  Matrix result(mat1.rows, mat2.columns);
  result.Null();
  for(int i=0; i<mat1.rows;++i){
    for(int j=0; j<mat1.columns; ++j){
      for(int k=0; k<mat2.columns; ++k){
        result.matrix[i][k] += mat1.matrix[i][j]*mat2.matrix[j][k];
      }
    }
  }

  return result;
}
std::vector<Matrix>ans;
void MultiplyBlock(const Matrix& mat1, const Matrix&  mat2, int fist_block_number, int second_block_number, int k, int len,int number){

  Matrix result(k,k);
  result.Null();
  int l1 = fist_block_number / len * k;
  int r1 = fist_block_number % len * k;
  int l2 = second_block_number / len * k;
  int r2 = second_block_number % len * k;

  for(int i=0; i<k;++i){
    for(int j=0; j<k; ++j){
      for(int k1=0; k1<k; ++k1){
        result.matrix[i][k1] += mat1.matrix[i+l1][j+r1]*mat2.matrix[j+l2][k1+r2];
      }
    }
  }
  ans[number]=result;
}
Matrix MultiplyKThreads(const Matrix& mat1, const Matrix&  mat2,int k,int n) {
  int len = n / k;
  std::vector<std::thread> vec;
  ans.resize(len * len * len);
  for(int i=0;i<len;i++)
    for(int j=0;j<len;j++)
      for(int k1=0;k1<len;k1++){
        vec.emplace_back(std::thread(MultiplyBlock,mat1,mat2,i*len+j,j*len+k1,k,len,i*len*len+j*len+k1));
      }
  Matrix result(n,n);
      result.Null();
  for(int i=0;i<vec.size();i++)
    vec[i].join();

  for(int i=0;i<vec.size();i++){
    int i1 = i / len / len;
    int j1 = i / len % len;
    int k1= i % len;
    for(int q=i1*k;q<i1*k+k;q++)
      for(int q2=k1*k;q2<k1*k+k;q2++) {
        result.matrix[q][q2] += ans[i].matrix[q - i1 * k][q2 - k1 * k];
      }
  }
  return result;
}

