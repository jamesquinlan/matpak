% mkdiagdom(n) creates an n x n diagonally dominate matrix A
%
% INPUTS:
%         n    = size of matrix
%         type = real (default), or 'int' for integer 
%         d    = scales the size of the entries (default is small)
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
function D = mkdiagdom(n,type,d)

    if nargin<2
        type='real';
    end
     
    if nargin<3
        d = diag(rand(1,n));
    end
    D = randn(n);
    S = diag(sum(abs(D),2));
    M = max(abs(D),[],'all')*eye(n);
    D = D+d*M+S; 
    
    if strcmp(type,'int')
        D = fix(D)+1;  
    end
end

