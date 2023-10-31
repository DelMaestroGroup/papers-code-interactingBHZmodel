#include <Eigen/Dense>
#include "Parameters_BHZ.hpp"
#include "Connection_BHZ.hpp"
#include "Hamiltonian_BHZ.hpp"

#ifndef Observables_BHZ_HPP
#define Observables_BHZ_HPP

typedef vector< complex<double> >  Mat_1_Complex_doub; //defines a 1D array of complex numbers
typedef vector<Mat_1_Complex_doub> Mat_2_Complex_doub; //defines a 2D array of complex numbers
typedef vector<Mat_2_Complex_doub> Mat_3_Complex_doub;
typedef vector<Mat_3_Complex_doub> Mat_4_Complex_doub;

using namespace Eigen;

class Observables_BHZ
{
public:
    Observables_BHZ(Parameters_BHZ& Parameters_BHZ__, Connection_BHZ& Connection_BHZ__, Hamiltonian_BHZ& Hamiltonian_BHZ__):
    Parameters_BHZ_(Parameters_BHZ__),Connection_BHZ_(Connection_BHZ__),Hamiltonian_BHZ_(Hamiltonian_BHZ__){
        Initialize();
        Calculate_Local_Density_of_Electrons();
        Calculate_Energy_Bands_on_Path();
        Calculate_Spectral_Function();
    }
    int lx_, ly_, orbs_, spin_;
    int size_,cells_, mhs_;

    double mu_val;
    int w_size;
    double dw,eta,omega;

    int r1x,r1y,r2x,r2y;
    int kx_ind,ky_ind,k_ind;
    double kx,ky;

    VectorXd evals_;
    MatrixXcd evecs_;

    complex<double> Zero_Complex, One_Complex, Iota_Complex;

    Mat_3_Complex_doub B_mat;

    void Initialize();
    void Calculate_Local_Density_of_Electrons();
    void Calculate_MomSpace_Occupation_Number();
    void Calculate_Energy_Bands_on_Path();
    void Calculate_Spectral_Function();
    void Calculate_Spin_Chern_Number();

    Parameters_BHZ &Parameters_BHZ_;
    Connection_BHZ &Connection_BHZ_;
    Hamiltonian_BHZ &Hamiltonian_BHZ_;
    
};


#endif