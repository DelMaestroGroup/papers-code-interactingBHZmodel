#include <complex>
#include <Eigen/Dense>
#include "Parameters_BHZ.hpp"

#ifndef Connection_BHZ_HPP
#define Connection_BHZ_HPP

using namespace std;
using namespace Eigen;

class Connection_BHZ
{
public:
    Connection_BHZ(Parameters_BHZ& Parameters_BHZ__):Parameters_BHZ_(Parameters_BHZ__){
        Initialize();
    }
    int lx_, ly_, w_;
    int orbs_, spin_,size_;
    double A_, B_, M_, Vo_;

    MatrixXcd C_mat;

    bool Periodic_X,Periodic_Y;

    Parameters_BHZ &Parameters_BHZ_;
    
    void Initialize();
    void ConnectionMatrix();
    void PrintConnection();
    
};


#endif