% SENMAT -  Returns a sensitivity matrix
%
%   Input:  A = transition matrix
%   Output: S = Sensitivity Matrix.  
%
% Reference:
% 
% See also matpak

% SENMAT is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% -------------------------------------------------------------------------
function [ S ] = senmat( A )
    [W, d] = eig(A);
    d = diag(d);
    imax = find(d == max(d));
    V = conj(inv(W));
    w = W(:,imax);
    v = real(V(imax,:)).';
    S = v*w';
end

