function P = randpermat(n)
%RANDPERMAT - returns random permutation matrix order n
%
% EXAMPLE: P = randpermat(5)
% 
% See also randperm, permute, perms


% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% MATPAK  - Matrix Package
% MATLAB: 9.8.0.1323502 (R2020a)
% Modified: 06/04/2020
% Copyright (C) Quinlan, J. 2020
% License: MIT
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


I = eye(n);
p=randperm(n);
P=I(:,p);

end