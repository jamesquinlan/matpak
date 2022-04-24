% ---------------------------------------------------------------------- %
% MATLAB Version:        9.2.0.556344 (R2017a).  Update 04/30/2017       %
% Prev. Version:         9.1.0.441655 (R2016b)                           %
% Purpose:               Check irreducibility of nxn nonneg. matrix      %
% Author:                James Quinlan                                   %
% Modified:              James Quinlan 2017-07-18                        %
% Notes:                 
% ---------------------------------------------------------------------- %

function [y,s]=isprimat(A)
%
% ISIRRED - Determines if a n x n nonnegative matrix is primitive  
%
% INPUT:
%       A = n x n nonnegative matrix
%
% OUTPUT:
%       y = Boolean variable 0/1
%       s = index of primitivity (primitive if s=1)
%
% NOTES: 
%       Primitivity is stronger than irreducible.  In fact, this function
%       will verify the the matrix is irreducible.
%       
%       Primitive = irreducible aperiodic non-negative matrices.
%     
%       Need to incorporate the index of imprimitivity.  
% ---------------------------------------------------------------------- %

%   Default (assume not primitive)
    y = false;
    
%   Check square
    [m,n] = size(A);
    if m ~= n
        y=false;
        return
    end
       
    
    %   Check nonnegativity
    if sum(sum(A<0)) > 0
        y=false;
        return
    end
    
    
%   Set Binary Matrix 
    B=logical(A);
    
%   Check condition for primitive
    if prod(prod(B^(n^2-2*n+2))) > 0
        y=true;
    end
end
        
     
