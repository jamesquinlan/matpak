function Y = isposdef(A)
% Returns logical 1 if A is POSITIVE DEFINITE (PD), 0 if not
% 
% EXAMPLE: isposdef(A)
%
% INPUT:
%   A = an n-by-n matrix
%
% MATHEMATICAL BACKGROUND and THEORY
% ------------------------------------------------------------- %
% Positive definite (PD) matrices show up in many applications. 
%
% PD matrices play important role when studying general matrices.  
% 
% Defintion: A is PD IFF x'*A*x>0.  NOTE: symmetry NOT required.
%
% Theorem 1: ANY square matrix A can be written as the sum of a symmetric and a
% skew-symmetric matrix, A=B+C, where B=(A+A')/2 and C=(A-A')/2.  
%        Note: Symmetric X'=X, Skew-symmetric X' = -X
%
% Theorem 2: An nxn matrix A is PD IFF the symmetric part of A is PD. 
%
% Theorem:  Let A be a REAL SYMMETRIC n x n matrix.  
% Then A is (symmetric) POSITIVE DEFINITE (SPD) if and only if all its eignvalues >0.
%
% Cor:  SPD IFF det(A)>0
%
% Theorem: If A is PD, then A = LU with diag(L)=e and diag(U) ~ = 0
%
% Comment 1: Every real matrix can be represented as the product of two real
% symmetric matrices, but when (at least) one of those facts is PD, then A
% is similar to s SYMMETRIC matrix, therefore A has real eigenvalues.
%
% Comment 2: A matrix with real & positive eigenvalues and a full set of 
% eigenvectors is characterized as a product of two PD matrices. 
%
% TFAE:
%   (i). A' = inv(S)*A*S with S=S' and S is PD
%   (ii). A is similar to a symmetric matrix (i.e., same eigs)
%   (iii). A is prod. of two symmetric matrixs, one which is PD
%   (iv). A is symmetrizable
%   (v). A has real eigenvalues and full set of eigenvectors
% ------------------------------------------------------------- %
%
% REFERENCES:
%   [1]. Johnson, C. R. (1970). Positive definite matrices. 
%        The American Mathematical Monthly, 77(3), 259-264.
%   
%   [2]. Taussky, O. (1968). Positive-definite matrices and 
%        their role in the study of the characteristic roots of 
%        general matrices. Advances in Mathematics, 2(2), 175-186.
%
% See Also chol, issymmetric

% bibTeX 
%{
@article{johnson1970positive,
  title={Positive definite matrices},
  author={Johnson, CR},
  journal={The American Mathematical Monthly},
  volume={77},
  number={3},
  pages={259--264},
  year={1970},
  publisher={Taylor \& Francis}

@article{taussky1968positive,
  title={Positive-definite matrices and their role in the study of the characteristic roots of general matrices},
  author={Taussky, Olga},
  journal={Advances in Mathematics},
  volume={2},
  number={2},
  pages={175--186},
  year={1968},
  publisher={Academic Press}
}


%}


    [~,r] = chol(A);   % r=0 if positive definite
    Y = r==0; %(&& rank(A)==size(A,1); % and full rank


% Deprecicated: Symmetry does NOT have to be included in definition
% of Positive Definite.

%if issymmetric(A) || isbounded(abs(A-A'),eps(eps))
%     Y=all(eig(A) > eps);
%end

% Faster Alternative ?
%[~,r] = chol(A);   % r=0 if positive definite
% r==0 && rank(A)==size(A,1);

% Alternative 2
% 
%try
%     [~]=chol(A); 
%     Y=1;
%catch me
%     Y=0;
%end

end

