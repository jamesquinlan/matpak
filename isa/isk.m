function K=isk(A)
% ISM - determines if matrix A is an K-Matrix
%
% INPUT:  A = n x n matrix
% 
% OUTPUT  K = 1 (K-matrix), 0 = (non K-matrix)
% 
% Defintion: A square matrix with nonpositive off-digonal 
%            elements (a_{ij}<=0 for all i~=j) is called a Z-matrix
%
% See also ism

% ------------------------------------------ %
K = false;                 
B=A-diag(diag(A));      
if issparse(B)
     B=full(B);        
end

% Check to see if off diagonal entries are nonpositive
if sum(sum(B<=0))~=numel(A)
     K=0;
     return
end

