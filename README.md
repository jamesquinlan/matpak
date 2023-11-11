# matpak
`matpak` stands for "MATrix PAcKage."  It is a collection of utility functions written in MATLAB for matrix manipulation and analysis.  It was initiated during computational research on function approximation.  There was a need to generate random stochastic matrices with various properties, including Toeplitz (or Hankel), diagonally dominate, $Z$, and $M$ matrices, etc.  A primary property of the matrix kernel was the centrosymmetric property.  Most functions are simple and can quickly be built or generated using a few lines of MATLAB code. However, housing these functions used frequently in one location aided in facilitating research.  
 

It contains several *is* functions to classify matrices (e.g., ism(A) determines if a matrix is an M-matrix).    


## MATLAB Version Tested

MATLAB Version: 9.8.0.1323502 (R2020a)


## Contents in brief

* `centrostochastic` - generate Centrosymmetric Stochastic Matrix
* `counterid` - generate counter-diagonal matrix
* `iscentro`
* `isbounded`
* `ism(A)` - determines if a matrix is an M-matrix 
* `isortho(A)` - determines if a matrix is orthonormal
* `isposdef(A)` - determines if a matrix is positive definite
* `isprimat(A)` - determines if a matrix is prime
* `isrso(A)` - determine if a matrix  is row sum one
* `isstochastic(A)` - determines if a matrix is stochastic
* `istridiag`
* `istoeplitz(A)` - determines if a matrix is Toeplitz
* `isz(A)` - determines if a matrix is a $Z$-matrix
* `mkrowsto` - makes a random row stochastic matrix
* `mkdiagdom` - makes a random diagonally dominant matrix
* `mkrso` - makes a random row sum one matrix
* `numeldiag`
* `mat2latex`


Check back for the remainder of the list. There are **many** other functions built but not listed or pushed to this repo (yet). 

