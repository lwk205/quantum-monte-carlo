# Quantum Monte Carlo

## References, papers


1. Quantum Monte Carlo, [Wikipedia](https://en.wikipedia.org/wiki/Quantum_Monte_Carlo)

2. FreeScience about [Quantum Monte Carlo](http://freescience.info/Physics.php?id=35)

1. Quantum Monte Carlo simulations of solids. Rev. Mod. Phys. year **2001**, volume 73, page 33, [PDF](http://altair.physics.ncsu.edu/lubos/papers/revmodphysfinal.pdf)

1. Toward the Exact Solution of the Electronic Schrödinger Equation for Noncovalent Molecular Interactions:  Worldwide Distributed Quantum Monte Carlo Calculations, J. Phys. Chem. A, volume 112, pages 2104-2109, year **2008**, [link](https://pubs.acs.org/doi/10.1021/jp077592t)

1. Quantum Monte Carlo for atoms, molecules and solids, Chem. Phys. Lett. volume 478, pages 1–10, year **2009** [link](https://www.sciencedirect.com/science/article/abs/pii/S0009261409008033?via%3Dihub)

1. QWalk: A quantum Monte Carlo program for electronic structure, Journal of Computational Physics, Volume 228, Issue 9, Year **2009**, Pages 3390-3404, [PDF](https://arxiv.org/pdf/0710.4361.pdf)

1. Continuum variational and diffusion quantum Monte Carlo calculations, **2009**, [PDF](https://casinoqmc.net/papers/qmc_review.pdf)

1. Continuum variational and diffusion quantum Monte Carlo calculations, **2009**, [PDF](https://casinoqmc.net/papers/towler_review.pdf)

1. Applications of quantum Monte Carlo methods in condensed systems, **2010**, [PDF](https://arxiv.org/pdf/1010.4992.pdf)

1. Applications of quantum Monte Carlo methods in condensed systems, Rep. Prog. Phys. volume 74, pages 026502, year 2011, [link](https://iopscience.iop.org/article/10.1088/0034-4885/74/2/026502) 

1. Petascale computing opens up new vistas for quantum Monte Carlo, **2011**, [PDF](https://casinoqmc.net/papers/petascale_psik.pdf)

1. Quantum Monte Carlo and Related Approaches, Chem. Rev. volume 112, pages 263-288, year **2012**, [link](https://pubs.acs.org/doi/10.1021/cr2001564)

1. Quantum Monte Carlo for Noncovalent Interactions: An Efficient Protocol Attaining Benchmark Accuracy, Phys. Chem. Chem. Phys. volume 16, Issue 38, pages 20915-20923, year **2014**, [PDF](https://arxiv.org/pdf/1403.0604.pdf)

1. Quantum Monte Carlo for Noncovalent Interactions: A Tutorial Review, Acta Physica Slovaca Volume 64, Number 5, Pages 501-574, Year **2015**, [paper](https://www.researchgate.net/publication/283051612_Quantum_Monte_Carlo_for_Noncovalent_Interactions_A_Tutorial_Review)

1. Introduction to the variational and diffusion Monte Carlo methods, **2015**, [PDF](https://arxiv.org/pdf/1508.02989.pdf)

1. QMCPACK: an open source ab initio quantum Monte Carlo package for the electronic structure of atoms, molecules and solids, Journal of Physics: Condensed Matter, volume 30, number 19, pages 195901, year **2018**, [link](https://iopscience.iop.org/article/10.1088/1361-648X/aab9c3/meta)

1. mVMC—Open-source software for many-variable variational Monte Carlo method, Computer Physics Communications, Volume 235, year **2019**, Pages 447-462, [link](https://www.sciencedirect.com/science/article/pii/S0010465518303102)

1. TurboRVB: a many-body toolkit for it ab initio electronic simulations by quantum Monte Carlo, **2020**, [PDF](https://arxiv.org/pdf/2002.07401.pdf)

1. Variational and diffusion quantum Monte Carlo calculations with the CASINO code, J. Chem. Phys. volume 152, page 154106, year 2020, [link](https://aip.scitation.org/doi/10.1063/1.5144288)



## References, books

1. Monte Carlo Methods In Ab Initio Quantum Chemistry, **1994**, [book](https://www.amazon.com/Methods-Quantum-Chemistry-Scientific-Lecture/dp/9810203225/ref=sr_1_1?dchild=1&keywords=Monte+Carlo+Methods+In+Ab+Initio+Quantum+Chemistry&qid=1588263518&s=books&sr=1-1)

1. Quantum Monte Carlo: origins, development, applications, **2007**, [book](https://www.amazon.com/Quantum-Monte-Carlo-Development-Applications/dp/0195310101/ref=sr_1_1?dchild=1&keywords=Quantum+Monte+Carlo%3A+origins%2C+development%2C+applications&qid=1588263306&s=books&sr=1-1)

1. The Wigner Monte-Carlo Method for Nanoelectronic Devices: A Particle Description of Quantum Transport and Decoherence, **2010**, [book](https://www.amazon.com/Wigner-Monte-Method-Nanoelectronic-Devices/dp/1848211503)

1. Quantum Monte Carlo Programming: For Atoms, Molecules, Clusters, and Solids, **2013**, [book](https://onlinelibrary.wiley.com/doi/book/10.1002/9783527676729)

1. Computational Materials Science: From Ab Initio to Monte Carlo Methods, **2018**, [book](https://www.amazon.com/Computational-Materials-Science-Initio-Methods-ebook/dp/B07CCGJRXQ/ref=sr_1_fkmr0_1?dchild=1&keywords=Monte+Carlo+Methods+In+Ab+Initio+Quantum+Chemistry&qid=1588263518&s=books&sr=1-1-fkmr0)



## Software

### QMCPACK (C++)
1. [QMCPACK](https://www.qmcpack.org/)’s capabilities include the following:
    * Auxilary Field Monte Carlo
    * Variational Monte Carlo
    * Diffusion Monte Carlo
    * Reptation Monte Carlo    
    * Single and multi-determinant Slater Jastrow wavefunctions
    * Wavefunction updates using optimized multi-determinant algorithm of Clark et al.
    * Backflow wavefunctions
    * One, two, and three-body Jastrow factors
    * Excited state calculations via flexible occupancy assignment of Slater determinants
    * All electron and non-local pseudopotential calculations
    * Casula T-moves for variational evaluation of non-local pseudopotentials
    * Wavefunction optimization using the “linear method” of Umrigar and co-workers, with arbitrary mix of variance and energy in the objective function
    * Gaussian, Slater, plane-wave and real-space spline basis sets for orbitals
    * Interface and conversion utilities for plane-wave wavefunctions from Quantum Espresso (PWSCF)
    * Interface and conversion utilities for Gaussian-basis wavefunctions from GAMESS, PySCF, and Quantum Package (QP)
    * Easy extension and interfacing to other electronic structure codes via standardized XML and HDF5 inputs
    * MPI parallelism
    * Fully threaded using OpenMP
    * GPU (CUDA) implementation (limited functionality)
    * HDF5 input/output for large data
    * Nexus: advanced workflow tool to automate all aspects of QMC calculation from initial DFT calculations through to final analysis
    * Analysis tools for minimal environments (perl only) through to python-based with graphs produced via matplotlib.

1. Although primarily used for electronic structure problems, within QMCPACK the Hamiltonian definition is very flexible and also suited to some model systems.

1. For a full description see the current documentation or [QMCPACK citation paper](https://iopscience.iop.org/article/10.1088/1361-648X/aab9c3/meta).



### TurboRVB (Fortran 90)

1. [TurboRVB](https://people.sissa.it/~sorella/TurboRVB_Manual/build/html/index.html) is a computational package for ab initio Quantum Monte Carlo (QMC) simulations of both molecular and bulk electronic systems. The code implements two types of well established QMC algorithms: Variational Monte Carlo (VMC), and Diffusion Monte Carlo in its robust and efficient lattice regularized variant.

1. A key feature of the code is the possibility of using strongly correlated many-body wave functions, capable of describing several materials with very high accuracy, even when standard mean-field approaches (e.g., density functional theory (DFT)) fail. The electronic wave function (WF) is obtained by applying a Jastrow factor, which takes into account dynamical correlations, to the most general mean-field ground state, written either as an antisymmetrized geminal product with spin-singlet pairing, or as a Pfaffian, including both singlet and triplet correlations. This wave function can be viewed as an efficient implementation of the so-called resonating valence bond (RVB) ansatz, first proposed by L. Pauling and P. W. Anderson in quantum chemistry and condensed matter physics, respectively. The RVB ansatz implemented in TurboRVB has a large variational freedom, including the Jastrow correlated Slater determinant as its simplest, but nontrivial case. Moreover, it has the remarkable advantage of remaining with an affordable computational cost, proportional to the one spent for the evaluation of a single Slater determinant. Therefore, its application to large systems is computationally feasible. The WF is expanded in a localized basis set. Several basis set functions are implemented, such as Gaussian, Slater, and mixed types, with no restriction on the choice of their contraction.

1. The code implements the adjoint algorithmic differentiation that enables a very efficient evaluation of energy derivatives, comprising the ionic forces. Thus, one can perform structural optimizations and molecular dynamics in the canonical NVT ensemble at the VMC level. For the electronic part, a full WF optimization (Jastrow and antisymmetric parts together) is made possible thanks to state-of-the-art stochastic algorithms for energy minimization. In the optimization procedure, the first guess can be obtained at the mean-field level by a built-in DFT driver.

1. The code has been efficiently parallelized by using a hybrid MPI-OpenMP protocol, that is also an ideal environment for exploiting the computational power of modern GPU accelerators.

1. Papers related to TurboRVB's:
    * TurboRVB: a many-body toolkit for ab initio electronic simulations by quantum Monte Carlo, [paper](https://arxiv.org/abs/2002.07401)
    * All-Electron Quantum Monte Carlo with Jastrow Single Determinant Ansatz: Application to the Sodium Dimer, [paper](https://pubs.acs.org/doi/10.1021/acs.jctc.9b00295)
    * Assessing the accuracy of the Jastrow antisymmetrized geminal power in the H4 model system, [paper](https://aip.scitation.org/doi/10.1063/1.5081933)


### CASINO (Fortran 2003)

1. [CASINO](https://vallico.net/casinoqmc/what-is-casino/) is a computer program system for performing quantum Monte Carlo (QMC) electronic structure calculations that has been developed by a group of reseachers initially working in the Theory of Condensed Matter group in the Cambridge University physics department, and their collaborators, over more than 20 years.  It is capable of calculating incredibly accurate solutions to the Schrödinger equation of quantum mechanics for realistic systems built from atoms. This helps us understand and predict the nature of the Universe (as well as, you know, helping us to design drugs and superconductors and write grant applications).  Other highly accurate methods are known that can do this of course, but what makes CASINO important is that – given a big enough computer – it can carry on doing this for systems containing hundreds or even thousands of atoms. These many atoms can form isolated giant molecules or groups of molecules, or they can be the repeating unit in an infinite crystal periodic in one, two, or three dimensions. Because of their inferior scaling with system size, competing methods of comparable accuracy generally struggle to handle more than a few tens of atoms.

1. A technical listing of CASINO’s scientific capabilities is as follows:
    * Variational Monte Carlo. Wave function optimization achieved with variance minimization, accelerated variance minimization, energy minimization, and minimization of the mean absolute deviation of the set of local energies from the median.
    * Fixed-node/fixed-phase diffusion Monte Carlo (pure or branching)
    * Reptation Monte Carlo.
    * Applicable to finite systems such as atoms and molecules and also to systems with periodic boundary conditions in 1, 2 or 3 dimensions (polymers, slabs/surfaces, crystalline solids) with any arbitrary crystal structure.
    * Capable of using methods – called ‘linear scaling QMC’ in the literature – in which the time to move an electron scales linearly with the system size (but where the time taken to get the energy per simulation cell to a specified error bar in fact scales as the square of the system size. This is still very good compared to high accuracy quantum chemistry methods where the ‘gold standard’ methods scale as N^7).
    * Can be used with different types of particles (electrons, positrons, ‘holes’, do-it–yourself particles with arbitrary mass and charge..) and combinations of such particles.
    * Real or complex wave functions
    * The code may use orbitals expanded in a variety of basis sets in the determinantal part of the many-electron trial wave function.
    * Uses flexible Slater-Jastrow many-electron wave functions, where the Slater part may consist of multiple determinants.
    * Support for ‘compressed determinant expansions’, which allow a large reduction in the computational cost of calculations using multi-determinants by using simple algebraic properties of determinants to combine the terms into fewer, more complex objects.
    * Backflow correlations (also in inhomogeneous systems).
    * Pairing wave functions and geminals.
    * CASINO has established  links to various other software  packages via a generic interface for each basis set type.
    * Non-local pseudopotentials with s, p, d non-locality, and core polarization potentials. Possibility to use Casula non-local scheme.
    * Computation of ground and excited state energies.
    * Computation of forces on atoms in VMC or DMC (Gaussian basis sets only).
    * Coupled DFT-DMC molecular dynamics calculations (with the PWSCF code).
    * Computation of various expectation values such as pair correlation functions, density matrices, densities and spin densities, localization tensors, dipole moments, momentum density, and structure factors.
    * Periodic Coulomb interactions computed either with standard Ewald methods or with our MPC (modified periodic Coulomb) interaction which is both faster than the Ewald method and exhibits smaller ‘Coulomb finite-size effects’. Twist averaging. Coulomb finite size effects also computable with alternative structure factor method.
    * Spin-polarized calculations (e.g., of magnetic solids).
    * Non-collinear spin systems (for a restricted set of cases
    
1. References to CASINO code:
    * Variational and diffusion quantum Monte Carlo calculations with the CASINO code, J. Chem. Phys. volume 152, page 154106 year 2020 [link](https://aip.scitation.org/doi/10.1063/1.5144288)

### QWalk (C++)

1. [QWalk](http://qwalk.github.io/mainline/) is a program developed to perform high accuracy quantum Monte Carlo calculations of electronic structure in molecules and solids. It is specifically designed as a research vehicle for new algorithms and method developments, as well as being able to scale up to large system sizes.

1. The source code is available on [GitHub/QWalk](https://github.com/QWalk/mainline)

1. The reference paper:
    * QWalk: A quantum Monte Carlo program for electronic structure, Journal of Computational Physics, Volume 228, Issue 9, Year **2009**, Pages 3390-3404, [PDF](https://arxiv.org/pdf/0710.4361.pdf)

### CHAMP (Fortran)

1. [CHAMP](http://pages.physics.cornell.edu/~cyrus/champ.html) is a quantum Monte Carlo suite of programs for electronic structure calculations on a variety of systems (atoms, molecules, clusters, solids and nanostructures) principally written by Cyrus Umrigar and Claudia Filippi with major contributions by Julien Toulouse and Devrim Guclu, postdocs at Cornell and smaller contributions by others. 

1. CHAMP is presently a suite of programs with the following three basic capabilities:
    * Optimization of many-body wave functions by variance minimization (FIT)
    * Optimization of many-body wave functions by any linear combination of energy and variance minimization (VMC)
    * Metropolis or Variational Monte Carlo (VMC)
    * Diffusion Monte Carlo (DMC)

1. In each case, the very best quantum Monte carlo algorithms have been used. A great deal of attention has been paid to the implementation of highly efficient algorithms, a variety of sophisticated wave functions, and tools to optimize them, with particular emphasis on all-electron and pseudopotential finite systems. For such systems, the code can also compute forces on the nuclei, a necessary precursor of molecular dynamics calculations. There are both serial and parallel (MPI) versions of the codes. 

1. Particularly noteworthy features of CHAMP are:
    * Efficient wave function optimization by linear combination of energy and variance minimization
    * A variety of sophisticated forms of the Jastrow factor
    * An accelerated Metropolis method
    * Efficient diffusion Monte Carlo algorithms
    * Numerical forces on nuclei for finite systems

### QMcBeaver (C++)

1. [QMcBeaver](http://qmcbeaver.sourceforge.net/) is about 72000 lines of an open source, ANSI compliant, object-oriented (C++) program to perform Quantum Monte Car lo calculations on atoms and molecules. From the start, our goals have been for our code to be licensed using GPL, legible, modular, and modifiable. 

1. Here are a few of the specific capabilities and features of QMcBeaver code:
    * An efficient initialization routine (Initialization, see publications).
    * An efficient statistical decorrelation method (Dynamic Distributable Decorrelation Algorithm (DDDA), see publications).
    * An efficient parallelization method (Manager-Worker Parallelization, see publications).
    * The ability to run on a GPU (experimental stage, see publications).
    * We use various 2 and 3 particle Jastrow functions, including those recommended here.
    * The cusp replacement algorithm recommended here
    * Psuedopotentials (VMC works, but I haven't stabilized DMC)
    * Analytic first derivatives with respect to all Jastrow parameters, CI coefficients, and MO coefficients.
    * The optimization algorithm recommended here. We have several other optimization routines coded too.
    * The DMC algorithm recommended here.
    * The future walking method recommended here.
    * The atomic force method recommended here.
    * A system to checkpoint calculations.
    * We've spent quite a bit of effort optimizing the important parts of the code. This statement is almost meaningless however since we have no performance comparisons with other QMC codes.
    * The code has been extensively (and recently) tested with mpicc, gcc, Intel's icc, AIX, Tru64 compilers, and we've played around with a couple others including Cray, Irix, PGI, etc.
    * Our code works well with LAMPI, OpenMPI, and MPICH 2, and we get very efficient scaling for 100 to 1000 processors, especially given our efficient initialization scheme.
    * It was designed to be used with LAPACK, GotoBLAS, ATLAS, linking directly to Fortran. Interfaces for HDF5 and SPRNG have also been programmed, but we don't typically use them.
    * We scripts to grab wavefunctions from Jaguar and GAMESS
    * We provide a couple of scripts to visualize Jastrows & optimization convergence, and QMC run convergence. 

1. The source code is available on [sourceforge](https://sourceforge.net/projects/qmcbeaver/)


### mVMC (C)
1. The [mVMC](https://www.pasums.issp.u-tokyo.ac.jp/mvmc/en/) is a low-energy solver for a wide ranger of quantum lattice models (multi-orbital Hubbard model, Heisenberg model, Kondo-lattice model) by using variational Monte Carlo method. User can obtain high-accuracy wave functions for ground states of above models. Users flexibly choose the correlation factors in wavefunctions such as Gutzwiller, Jastrow, and doublon-holon binding factors and optimize more the ten thousand variational parameters. It is also possible to obtain the low-energy excited states by specifying the quantum number using the quantum number projection.

1. The reference paper fo mVMC is:
    * mVMC—Open-source software for many-variable variational Monte Carlo method, Computer Physics Communications, Volume 235, year **2019**, Pages 447-462, [link](https://www.sciencedirect.com/science/article/pii/S0010465518303102), [PDF](https://reader.elsevier.com/reader/sd/pii/S0010465518303102?token=D4B2D52E09A374EDB74E07E125CD44183DB38AAE03D87FF91211E61BD6AE8A7892FD36F0FA44FF52CFF47BC693E269BB)
    
1. The source code avalilable on [GitHub](https://github.com/issp-center-dev/mVMC).

### QmcMol (Fortran 77, Fortran 95)

[QmcMol](https://www.lct.jussieu.fr/pagesperso/assaraf/qmcmol/qmcmol/index.html) a Quantum Monte-Carlo Program for Molecules 



### [QMC@HOME](http://qmcathome.org/)


# Multidimensional integration

1. Approximating Integrals via Monte Carlo and Deterministic Methods, **2000**, book, [link](https://www.amazon.com/Approximating-Integrals-Monte-Deterministic-Methods/dp/0198502788)

1. Advances in multidimensional integration, Journal of Computational and Applied Mathematics volume 149, pages 1-12, year **2002**, [PDF](https://reader.elsevier.com/reader/sd/pii/S0377042702005174?token=4A513CFDF9233E3157B97A9A243A95C70D6C5977ECD4022134D0F603FD5A83EC977D5A23B44BCDC9FF9CAE3E89BF796B)

1. Multidimensional integration throughMarkovian sampling under steered functionmorphing: a physical guise from statisticalmechanics, Computer Physics Communications, volume 195, pages 129-139 **2015**, [PDF](https://arxiv.org/pdf/1410.2810.pdf)

1. Computational Integration, **1998**, [book](https://www.amazon.com/Computational-Integration-Arnold-R-Krommer/dp/0898713749)

1. Methods of Numerical Integration, **1984**, [book](https://www.amazon.com/Philip-J-Davis/dp/0486453391/ref=sr_1_1?dchild=1&keywords=Methods+of+Numerical+Integration&qid=1588598280&s=books&sr=1-1)

1. Numerical Recipes, **2007**, [book](https://www.amazon.com/Numerical-Recipes-3rd-Scientific-Computing/dp/0521880688/ref=sr_1_1?dchild=1&keywords=Numerical+Recipes&qid=1588598333&s=books&sr=1-1)

1. Handbook of Computational Methods for Integration, **2004**, [book](https://www.amazon.com/Handbook-Computational-Methods-Integration-Kythe/dp/1584884282)

1. Methods of Numerical Integration, **2007**, [book](https://www.amazon.com/Methods-Numerical-Integration-Mathematics-Rabinowitz/dp/B010WFEN96)



1. [cubature](https://github.com/stevengj/cubature) Multi-dimensional adaptive integration in C.

1. [Cuba](http://www.feynarts.de/cuba/) - a library for multidimensional numerical integration in C.
    * Cuba - a library for multidimensional numerical integration, Computer Physics Communications, volume 168, Issue 2, pages 78-95, year **2005**, [link](https://www.sciencedirect.com/science/article/pii/S0010465505000792?via%3Dihub)
    * Concurrent Cuba, Journal of Physics: Conference Series, volume 608, pages 012066, year 2015, [PDF](https://iopscience.iop.org/article/10.1088/1742-6596/608/1/012066/pdf)
    * Concurrent Cuba, Computer Physics Communications, volume 207, pages 341-349, year 2016, [link](https://www.sciencedirect.com/science/article/pii/S001046551630128X?via%3Dihub)
