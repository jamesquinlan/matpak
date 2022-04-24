function M = ism(A)
% ISM - determines if matrix A is an M-Matrix
%
% INPUT:  A = n x n matrix
% OUTPUT  M = 1 (M-matrix), 0 = (non M-matrix)
% 
% BACKGOUND: M-matrices play significant role in applications and in the 
%            solution of nonlinear differential equations.
%            
%            Defintion: A square matrix with nonpositive off-digonal 
%                       elements (a_{ij}<=0 for all i~=j) is called a Z-matrix
%
%            Defintion: M-matrix is a Z-matrix with positive eigenvalues
%                       e.g., A = [2 -1 0;-1 3 -2;0 -2 2]
%
% REFERENCE:  
%          
% See also diag, sparse, full, eig, all

% ------------------------------------------ %
M = false;                      % Assume False
B = A - diag(diag(A));          % Off-diagonals
if issparse(B)                 
    B = full(B);                  
end

% Check to see if off diagonal entries are nonpositive
if ~all(B <= 0,'all')
    return
end

% Check for positive eigenvalues
evals = eig(A);
if all(evals > 0)
   M = true;
   return
end
