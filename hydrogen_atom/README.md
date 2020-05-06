# Quantum Monte Carlo for hydrogen atom

The original source code of the Fortran program is copied from the book
Wolfgang Schattke and Ricardo Díez Muiño "Quantum Monte Carlo Programming for Atoms, Molecules, Clusters, and Solids".
Based on the code the following modification have been applied.


## Theory

1. The problem is solved in spherical coordinate system, hence the Schr"odinger equation has the form
\hat{H} \Psi(r) = \eps \Psi(r)
where the operator \hat{H} has the form
\hat{H} = (-\frac{1}{2r} \frac{d^2}{dr^2} r - \frac{1}{r})

1. The smallest eigenvalue is calculated by three dimensional integral:
\eps = \int_{R^3} P(r) E(r) dr^3
where P(r) is the probability density defined as
P(r) = \frac{\Psi^2(r)}{\int_{R^3} \Psi^2(r)}
and E(r) is the local energy defined as
E(r) = \frac{ \hat{H}\Psi(r) }{ \Psi(r) }

1. Since in hydrogen atom, the wave function \Psi(r) is spherically symmetric, both functions
P(r) and E(r) are spherically symmetric. Hence, the eigenvalue \eps can be calculated in
spherical coordinates:
\eps = 4 \pi \int_{r=0}^{\infty} r^2 P(r) E(r) dr
However, in the current implementation this is not used, and the intergal is calculated in R^3 space.

1. The integral is approximated by the sum
\eps = \frac{1}{M} \sum_{i=1}^{M} E(r_i)
= \frac{1}{M} \sum_{i=1}^{M} \frac{ \hat{H} \Psi(r_i) }{ \Psi(r_i) }
where r_i are generated according to probability density P(r_i)

1. The wave function \Psi has the form
\Psi(r) = (1 + c r) exp(-\alpha r)
where r >=0, and c, \alpha are parameters

1. In Monte Carlo method the fraction \frac{ P(r_2) }{ P(r_1) ) is needed.
Based on the definition of probability density P, we obtain
\frac{ P(r_2) }{ P(r_1) ) = \frac{ \Psi^2(r_2) }{ \Psi^2(r_1) )
Substituting the explicit expression for \Psi we have
\frac{ P(r_2) }{ P(r_1) ) = [\frac{1+c r_2}{1 + c r_1}]^2 * \exp(-2 * \alpha (r_2 - r_1))

1. For the specific expression fo \psi, the fraction \frac{ \hat{H} \Psi(r_i) }{ \Psi(r_i) }
has the form
E_k + E_p,
where
E_k =  -\frac{\alpha^2}{2} + \frac{\alpha}{r} - \frac{c(1 - \alpha r)}{ r (1 + c r) }
and
E_p = -\frac{1}{r}
Notice, that values for r=0 are infinite!

1. The analytic solution form hydrogen atom is \alpha = 1 and c = 0. For these values,
E_k + E_p is -0.5, always!

