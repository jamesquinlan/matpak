function [isdd] = isdiagdom(A)
% ISDIAGDOM(A) returns logical true if n x n matrix A is diagonally
%              dominate.
% INPUT: Matrix A \in M_n(\R)
% OUTPUT: Boolean

% Copyright (C) 2019-2020 Quinlan, James
% Licence: MIT
     
     % Assume it is not diagonally dominate
     [m,n]=size(A);
     
     if m==n 
          % Extract absolute value of diagonal
          D = diag(abs(A));
          R = abs(A) - diag(D);
          isdd = logical(prod(D - sum(R,2)>0));
     else
          isdd=false;
     end
end

