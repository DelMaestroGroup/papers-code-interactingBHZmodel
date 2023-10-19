# Topological and magnetic properties of the interacting Bernevig-Hughes-Zhang model

Rahul Soni, Harini Radhakrishnan, Bernd Rosenow, Gonzalo Alvarez, and Adrian Del Maestro

### Abstract
We investigate the effects of electronic correlations on the Bernevig-Hughes-Zhang model using the real-space density matrix renormalization group (DMRG) algorithm. We introduce a method to probe topological phase transitions in systems with strong correlations using DMRG, substantiated by an unsupervised machine learning methodology that analyzes the orbital structure of the real-space edges. Including the full multi-orbital Hubbard interaction term, we construct a phase diagram as a function of a gap parameter ($m$) and the Hubbard interaction strength ($U$) via exact DMRG simulations on $N\times 4$ cylinders. Our analysis confirms that the topological phase persists in the presence of interactions, consistent with previous studies, but it also reveals an intriguing phase transition from a paramagnetic to an antiferromagnetic topological insulator.  The combination of the magnetic structure factor, strength of magnetic moments, and the orbitally resolved density, provides real-space information on both topology and magnetism in a strongly correlated system.


### Description
This repository includes data files, scripts, codes and analysis used to generate the figures in this paper.

### Requirements
The data in this project is generated using two different methods:
1. The data for the interacting BHZ model was generated via DMRG++ software developed by Dr. Gonzalo Alvarez. Here we provide detailed instructions on how to reproduce the DMRG results used in the main text. The results reported in this work were obtained with the DMRG++ version 6.05 and PsimagLite version 3.04. The documentation for the same is provided [here](https://github.com/g1257/dmrgpp), for compilation follow the steps below:
* Dependencies include the BOOST, HDF5 and OpenBLAS libraries
* git clone https://code.ornl.gov/gonzalo_3/PsimagLite.git
* cd PsimagLite/lib
* perl configure.pl
* make
* cd ../../
* git clone https://code.ornl.gov/gonzalo_3/dmrgpp.git
* cd dmrgpp/src
* perl configure.pl
* make
This will generate 'dmrg' and 'observe' executables. Run the dmrg executable first to save the ground state and then use the observe executable to evaluate all the necessary observables. See the steps below:
* ./dmrg -f input.inp
* ./observe -f input.inp ss,nn >> ss_nn.dat (this will provide all the spin-spin and charge-charge corrlations)
* ./observe -f input.inp '<gs|n?0|gs>' >>nl_0.dat (this will provide the local charge density for orbital-0 with spin-up. Similarly, one can observe the charge density for spin-down by replacing n?0 with n?1. For spin-up and spin-dn charge density of orbital-1 do observe n?2 and n?3.)

To generate input file, go to the input_files folder and run the following command : 
* python Create_input_dmrg.py M_val

2. The data for the non-interacting BHZ model was generated via exact diagonalization. The details of this code is provided in the "ED-code" folder of this repository.

### Support

### Figures

