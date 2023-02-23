function [e] = ek(k,n)
% ek = kth Elementary (or Standard) basis element
% ek = (0, 0, 0, ... , 1, 0, 0, 0, ... ,0)'
% 
% See also matpak

% ----------------------------- %
if nargin < 2
    n = k;
end

if k > n
    k = n;
end

e = zeros(n,1); e(k)=1;
% ----------------------------- %
end

