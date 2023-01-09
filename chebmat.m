function T = chebmat(n)
% CHEBMAT returns n x n Chebyshev change of basis matrix
% 
% INPUT:
%   n \in 0,1,2,3,....
% 
% Example:
%   T = chebmat(6)
%
% Notes: Integer sequences exist in rows, columns, and diagonals.
%        e.g., https://oeis.org/A001793
% 
% See also chebfun

%{
Quinlan, James
2021-10-17
%}

T = zeros(n+1);
T(1,1) = 1;

if n > 0
    T(2,2) = 1;
end

for k = 3:n+1
    T(k,:) = [0 2*T(k-1,1:end-1)] - T(k-2,:);
end