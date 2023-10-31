#include <Eigen/Dense>
#include "Parameters_BHZ.hpp"
#include "Connection_BHZ.hpp"

#ifndef Hamiltonian_BHZ_HPP
#define Hamiltonian_BHZ_HPP

using namespace Eigen;

class Hamiltonian_BHZ
{
public:
    Hamiltonian_BHZ(Parameters_BHZ& Parameters_BHZ__, Connection_BHZ& Connection_BHZ__):
     Parameters_BHZ_(Parameters_BHZ__),Connection_BHZ_(Connection_BHZ__){
        Initialize();
    }

    void Initialize();
    void Diagonalizer();
    double FermiFunction(double en_, double mu_);
    double ChemicalPotential(double particles_);
    
    int size_=Parameters_BHZ_.Ham_Size;

    MatrixXcd Evecs_;
    VectorXd Evals_;

    Parameters_BHZ &Parameters_BHZ_;
    Connection_BHZ &Connection_BHZ_;

};


#endif