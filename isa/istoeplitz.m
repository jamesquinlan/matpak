function T = istoeplitz(A)
% Determine if matrix is Toeplitz
%
% INPUT: matrix A
%
% OUTPUT: Logical value
%
% See also isa

% Quinlan, James.  09/30/2019
% ------------------------------

T = true;
index = size(A)-[1,1];

indices = -(index(1)-1):index(2)-1;
x = length(indices)-1;
vec = x:-1:0;
y = -ones(1,x+1);
 
adders = vec.*y.^vec;
K=indices(1);

for k=1:numel(indices)
   D=diag(A,K);
   for j=1:numel(D)-1
         if D(j)~=D(j+1)
               T = false;
               return;
         end
   end
   K = K + adders(k);
end

% Vectorized version 
% D./D(1)==ones(n,1)  % test to see if all entries are equal
