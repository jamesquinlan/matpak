% WEAVERMAT stochastic matrix given by the binomial probabilities
%
% INPUT:
%   int n
%
% OUTPUT:
%   W = (n+1) x (n+1) matrix.  
%
% Reference:
%   Weaver, J. R. (1985). Centrosymmetric (cross-symmetric) matrices, 
%   their basic  properties, eigenvalues, and eigenvectors. 
%   The American Mathematical Monthly, 92(10), 711-717.
%
% See also matpak, rowsum

% WEAVERMAT is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------
function W = weavermat(n)
    W = zeros(n);
   for i=0:n
       for j=0:n
           W(i+1,j+1)=nchoosek(n,j)*((n-i)/n).^(n-j).*(i/n).^j;
       end
   end
end


%% BibTeX
%{
@article{weaver1985centrosymmetric,
  title={Centrosymmetric (cross-symmetric) matrices, their basic properties, eigenvalues, and eigenvectors},
  author={Weaver, James R},
  journal={The American Mathematical Monthly},
  volume={92},
  number={10},
  pages={711--717},
  year={1985},
  publisher={Taylor \& Francis}
}
%}

