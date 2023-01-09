%% SWAPROWS - interchanges rows i and j
%   Particularly useful on Permutation matrices for LU decompositions
%   NOTE: Swap is NOT inplace.  
%
% INPUT:
%   A = matrix
%   i,j = rows i and j of A
%
% OUTPUT:
%   B = Matrix A with rows i and j interchanges
%
% Example: swaprows(eye(3),1,3);
%
% See also matpak, randpermat

% SWAPROWS is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------
function B = swaprows(A,i,j)
    B = A;
    B(i,:) = A(j,:);
    B(j,:) = A(i,:);
end
