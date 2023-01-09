% ELEMAT Returns an elementary matrix given:
%   n = size of matrix
%   k = scalar
%   i = row to be scaled by k and added to row j
%   j = row to be affected (changed)
%  
%   Row j --> Row j + (k* Row i) 
%   NOTE: This is Left multiplication i.e., EA, else 'row' is 'column'
%
% See also matpak, e, swaprow

% ELEMAT is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------
function [ E ] = elemat(n,k,i,j)
    E = eye(n);
    E(max(i,j), min(i,j)) = k;
end

