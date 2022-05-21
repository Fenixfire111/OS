
#ifndef INC_07_MATRIXLIN__MATRIX_H_
#define INC_07_MATRIXLIN__MATRIX_H_

using namespace std;
#include <vector>
#include <thread>
#include <cstdlib>
#include <ctime>
#include<iostream>
#include <pthread.h>



class Matrix {
 public:
  vector<vector<double>> matrix;
  int rows;
  int columns;

  Matrix(int rows, int columns);
  Matrix(){}
  void Null(){
    for(int i=0;i<rows;i++)
      for(int j=0;j<columns;j++)
        matrix[i][j]=0;
  }
  Matrix(const Matrix& other){
    matrix = other.matrix;
    rows = other.rows;
    columns = other.columns;
  }
};

struct Param{
  pthread_mutex_t mutex_;
  const Matrix& mat1_;
  const Matrix&  mat2_;
  int first_block_number_;
  int second_block_number_;
  int k_;
  int len_;
  int number_;

  Param(pthread_mutex_t mutex, const Matrix& mat1, const Matrix&  mat2, int first_block_number, int second_block_number,
        int k, int len, int number): mutex_(mutex), mat1_(mat1), mat2_(mat2), first_block_number_(first_block_number),
                                     second_block_number_(second_block_number), k_(k), len_(len), number_(number){}
};

Matrix Multiply(const Matrix& mat1, const Matrix&  mat2);
void MultiplyBlock(const Matrix& mat1, const Matrix&  mat2, int fist_block_number, int second_block_number, int k, int len,int number);
Matrix MultiplyKThreads(const Matrix& mat1, const Matrix&  mat2,int k,int n);

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

void * MultiplyBlock(void* params){

  Param * params_ = static_cast<Param*> (params);
  int first_block_number = params_->first_block_number_;
  int second_block_number = params_->second_block_number_;
  int len =  params_->len_;
  int k = params_->k_;
  int number = params_->number_;
  pthread_mutex_t mutex = params_->mutex_;
  Matrix mat1(params_->mat1_);
  Matrix mat2(params_->mat2_);

  Matrix result(k,k);
  result.Null();
  int l1 = first_block_number / len * k;
  int r1 = first_block_number % len * k;
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
//  int l1 = params_->first_block_number_ / params_->len_ * params_->k_;
//  int r1 = params_->first_block_number_ % params_->len_ * params_->k_;
//  int l2 = params_->second_block_number_ / params_->len_ * params_->k_;
//  int r2 = params_->second_block_number_ % params_->len_ * params_->k_;
//
//  for(int i=0; i<params_->k_;++i){
//    for(int j=0; j<params_->k_; ++j){
//      for(int k1=0; k1<params_->k_; ++k1){
//        result.matrix[i][k1] += params_->mat1_.matrix[i+l1][j+r1]*params_->mat2_.matrix[j+l2][k1+r2];
//      }
//    }
//  }
  pthread_mutex_lock(&mutex);
  ans[number]=result;
  pthread_mutex_unlock(&mutex);

  delete params_;
  pthread_exit(NULL);
}

Matrix MultiplyKThreads(const Matrix& mat1, const Matrix&  mat2,int k,int n) {
  int len = n / k;
  auto* threads = new pthread_t[len * len * len];
  auto mutex = PTHREAD_MUTEX_INITIALIZER;
  pthread_attr_t attr;
  void *status;
  pthread_attr_init(&attr);
  pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

//  std::vector<std::thread> vec;
  ans.resize(len * len * len);
  for(int i=0;i<len;i++)
    for(int j=0;j<len;j++)
      for(int k1=0;k1<len;k1++){
        //vec.emplace_back(std::thread(MultiplyBlock,mat1,mat2,i*len+j,j*len+k1,k,len,i*len*len+j*len+k1));
        pthread_mutex_init(&mutex, NULL);
        Param *parameters = new Param(mutex, mat1,mat2,i*len+j,j*len+k1,k,len,i*len*len+j*len+k1);

        pthread_create(&threads[i], &attr, MultiplyBlock, (void*)parameters);
        pthread_mutex_destroy(&mutex);
      }

  pthread_attr_destroy(&attr);
  for (int i = 0; i < len * len * len; ++i) {
    pthread_join(threads[i], &status);
  }

  Matrix result(n,n);
  result.Null();

  for(int i=0;i<len * len * len;i++){
    int i1 = i / len / len;
    int j1 = i / len % len;
    int k1= i % len;
    for(int q=i1*k;q<i1*k+k;q++)
      for(int q2=k1*k;q2<k1*k+k;q2++) {
        result.matrix[q][q2] += ans[i].matrix[q - i1 * k][q2 - k1 * k];
      }
  }

  delete [] threads;
  pthread_exit(NULL);

  return result;
}


#endif //INC_07_MATRIXLIN__MATRIX_H_
