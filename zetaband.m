% ZETABAND returns an n x n zeta banded matrix as defined in Kolibal
% Quinlan paper on number of elementary products of (special) banded 
% matrices.  
%
% INPUT:
%   z = number of bands
%   n = size of matrix
%
% OUTPUT:
%   A = matrix
%
% See also bands

% BANDS is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% -------------------------------------------------------------------------
function A = zetaband(z,n)

A = bands(ones(n),2-z:1);

end

 