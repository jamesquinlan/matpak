% MKORTHO   Make a random orthonomal matrix
%           Q = mkortho(n)
% INPUT:
%   int n
%
% OUTPUT:
%   Q = n x n  
%
% Reference:
%   Weaver, J. R. (1985). Centrosymmetric (cross-symmetric) matrices, 
%   their basic  properties, eigenvalues, and eigenvectors. 
%   The American Mathematical Monthly, 92(10), 711-717.
%
% See also matpak, qr

% WEAVERMAT is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------
function Q = mkortho(n)
    A=rand(n)+2*eye(n);
    [Q,~]=qr(A);        
end

