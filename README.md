# Quantum Monte Carlo

## References, papers


1. Quantum Monte Carlo, [Wikipedia](https://en.wikipedia.org/wiki/Quantum_Monte_Carlo)

1. Quantum Monte Carlo simulations of solids. Rev. Mod. Phys. year **2001**, volume 73, page 33, [PDF](http://altair.physics.ncsu.edu/lubos/papers/revmodphysfinal.pdf)

1. Quantum Monte Carlo for atoms, molecules and solids, Chem. Phys. Lett. volume 478, pages 1–10, year 2009 [link](https://www.sciencedirect.com/science/article/abs/pii/S0009261409008033?via%3Dihub)

1. QWalk: A quantum Monte Carlo program for electronic structure, Journal of Computational Physics, Volume 228, Issue 9, Year **2009**, Pages 3390-3404, [PDF](https://arxiv.org/pdf/0710.4361.pdf)

1. Continuum variational and diffusion quantum Monte Carlo calculations, **2009**, [PDF](https://casinoqmc.net/papers/qmc_review.pdf)

1. Continuum variational and diffusion quantum Monte Carlo calculations, **2009**, [PDF](https://casinoqmc.net/papers/towler_review.pdf)

1. Applications of quantum Monte Carlo methods in condensed systems, **2010**, [PDF](https://arxiv.org/pdf/1010.4992.pdf)

1. Applications of quantum Monte Carlo methods in condensed systems, Rep. Prog. Phys. volume 74, pages 026502, year 2011, [link](https://iopscience.iop.org/article/10.1088/0034-4885/74/2/026502) 

1. Petascale computing opens up new vistas for quantum Monte Carlo, **2011**, [PDF](https://casinoqmc.net/papers/petascale_psik.pdf)

1. Quantum Monte Carlo and Related Approaches, Chem. Rev. volume 112, pages 263-288, year **2012**, [link](https://pubs.acs.org/doi/10.1021/cr2001564)

1. Quantum Monte Carlo for Noncovalent Interactions: An Efficient Protocol Attaining Benchmark Accuracy, Phys. Chem. Chem. Phys. volume 16, Issue 38, pages 20915-20923, year **2014**, [PDF](https://arxiv.org/pdf/1403.0604.pdf)

1. Quantum Monte Carlo for Noncovalent Interactions: A Tutorial Review, Acta Physica Slovaca Volume 64, Number 5, Pages 501-574, Year **2015**, [paper](https://www.researchgate.net/publication/283051612_Quantum_Monte_Carlo_for_Noncovalent_Interactions_A_Tutorial_Review)

1. QMCPACK: an open source ab initio quantum Monte Carlo package for the electronic structure of atoms, molecules and solids, Journal of Physics: Condensed Matter, volume 30, number 19, pages 195901, year **2018**, [link](https://iopscience.iop.org/article/10.1088/1361-648X/aab9c3/meta)

1. mVMC—Open-source software for many-variable variational Monte Carlo method, Computer Physics Communications, Volume 235, year **2019**, Pages 447-462, [link](https://www.sciencedirect.com/science/article/pii/S0010465518303102)

1. TurboRVB: a many-body toolkit for it ab initio electronic simulations by quantum Monte Carlo, **2020**, [PDF](https://arxiv.org/pdf/2002.07401.pdf)

1. Variational and diffusion quantum Monte Carlo calculations with the CASINO code, J. Chem. Phys. volume 152, page 154106 year 2020 [link](https://aip.scitation.org/doi/10.1063/1.5144288)



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

### [CHAMP](http://pages.physics.cornell.edu/~cyrus/champ.html)

### [QMcBeaver](http://qmcbeaver.sourceforge.net/)

### [QWalk](http://qwalk.github.io/mainline/)

