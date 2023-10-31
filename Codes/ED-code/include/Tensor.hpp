#include <vector>
#include <complex>


using namespace std;

//ifndef and define prevents header files from being included multiple times!

#ifndef TENSOR_HPP
#define TENSOR_HPP

typedef vector< complex<double> >  Mat_1_Complex_doub; //defines a 1D array of complex numbers
typedef vector<Mat_1_Complex_doub> Mat_2_Complex_doub; //defines a 2D array of complex numbers
typedef vector<Mat_2_Complex_doub> Mat_3_Complex_doub;
typedef vector<Mat_3_Complex_doub> Mat_4_Complex_doub;
typedef vector<Mat_4_Complex_doub> Mat_5_Complex_doub;

typedef vector<double> Mat_1_doub;
typedef vector<Mat_1_doub> Mat_2_doub;
typedef vector<Mat_2_doub> Mat_3_doub;
typedef vector<Mat_3_doub> Mat_4_doub;
typedef vector<Mat_4_doub> Mat_5_doub;

typedef vector<int> Mat_1_int;
typedef vector<Mat_1_int> Mat_2_int;
typedef vector<Mat_2_int> Mat_3_int;
typedef vector<Mat_3_int> Mat_4_int;
typedef vector<Mat_4_int> Mat_5_int;

complex<double> const Zero_Complex(0.0,0.0);
complex<double> const One_Complex(1.0,0.0);
complex<double> const Iota_Complex(0.0,1.0);


#endif