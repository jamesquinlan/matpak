% BANDS extracts diagonals from A to form a banded matrix
% [B,M] = bands(A,v);
%
% INPUTS:
%   A = (m x n) matrix
%   v = vector of diagonals (default 0 = main diagonal)
%
% OUTPUTS: 
%   B = Banded matrix (e.g., tridiagonal)
%   M = Mask (matrix of 1 - 0) 
%
% EXAMPLE: Extract triadiagonal matrix from A 
%          A = randi(10,6,6); v = -1:1;
%
% See also diag, triu, tril

% BANDS is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------
function [B, M] = bands(A,v)
    if nargin < 2
        v = 0;
    end

    [m,n] = size(A);

    C = ones(m,n);      
    M = zeros(m,n);

    for i = v
        D = diag(diag(C),i);
        M = M + D(1:end-abs(i),1:end-abs(i));
    end
    B = M.*A;
end
% } 