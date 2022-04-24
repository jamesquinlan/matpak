function Y = isnormal(A)
% isnormal True if A is a normal matrix.
%
% Definition:  A NORMAL iff A'*A == A*A'
% 
% ISNORMAL - Determines in a matrix is normal, A'A = AA'
%            isnormal(A) returns logical 1 if A is normal
% 
% OUTPUTS: Logical 1 = True, 0 = False
%
% EXAMPLES: A = [-1 1 0;0 -1 1; 1 0 -1]; 
%           A = [ 2 1 1;1  2 1; 1 1  2];
% 
% See also: isa

% ISNORMAL is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------

     [m,n] = size(A);
     
     if m ~= n
         error('Normal matrices must be square');
     end
     Y = isequal(A'*A,A*A');
end

%{
TFAE
1. A is normal
2. A is diagonalizable by a unitary matrix
3. There exists a set of eigenvectors forming an orthonormal basis
4. ||Ax|| = ||A^* x||
5. Frobenious norm computed by sum of square of eigenvalues
6. A^* = AU for some unitary matrix
7. A commutes with a normal matrix with distinct eigs. 
%}
