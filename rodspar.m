%RODSPAR Small sparse matrix for building insights
%        Matrix size and NNZ are set by input parameters
% INPUT:
%       n = size of matrix (e.g., n=10)
%       s (sparsity level) = # of zero elements)  
%           0 = no sparcity.  
%           max s = n^2-n, full sparsity = diagonal
%           s=0 <===> Full matrix
%           s=n <==> Not very sparse
%
% OUTPUT:
%       A = small "sparse" matrix
%
% EXAMPLE: S = rodspar(5,15); % 5x5 with 15 zeros
%
% See also matpak, nnz, setdiff, diag

% RODSPAR is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------
function [ A, m ] = rodspar( n,s )
    if nargin<2
        s=0;
    end
    if s > n^2-n
        s=n^2-n;
    end 
    if s ~= 0
        m=floor((n^2-n)/s);
    else
        m=0;
    end
    
    A = randi(2*n,n,n);
    D = diag(diag(A));
    I = setdiff((1:n^2),find(D==A));
      
    for k=1:s
       j = randi([1,numel(I)],1,1);
       A(I(j)) = 0; 
       I(j) = [];
    end
    
end

