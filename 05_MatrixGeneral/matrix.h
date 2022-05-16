#ifndef INC_05_MATRIXGENERAL__MATRIX_H_
#define INC_05_MATRIXGENERAL__MATRIX_H_

using namespace std;
#include <vector>
#include <thread>
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
Matrix Multiply(const Matrix& mat1, const Matrix&  mat2);
  void MultiplyBlock(const Matrix& mat1, const Matrix&  mat2, int fist_block_number, int second_block_number, int k, int len,int number);
    Matrix MultiplyKThreads(const Matrix& mat1, const Matrix&  mat2,int k,int n);


#endif //INC_05_MATRIXGENERAL__MATRIX_H_
