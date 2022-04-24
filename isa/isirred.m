% ------------------------------------------------------------------------  %
% MATLAB Version:        9.2.0.556344 (R2017a).  Update 04/30/2017          %
% Prev. Version:         9.1.0.441655 (R2016b)                              %
% Purpose:               Check irreducibility of nxn nonneg. matrix         %
% Author:                James Quinlan                                      %
% Modified:              James Quinlan 2017-07-18                           %
% Notes:                 Expressions that include relational operators      %
%                        on arrays, such as B > 0 (line 51), are true       % 
%                        only when every element in the result is nonzero.  %
% ------------------------------------------------------------------------- %

function y = isirred(A)
%
% ISIRRED - Determines if a n x n nonnegative matrix is irreducible using
%           theorem:  If (I+A)^{n-1} > 0, then A is irreducible.
%
% INPUT:
%       A = n x n nonnegative matrix
%
% OUTPUT:
%       y = Boolean variable 0/1
%

%   Default (assume not irreducible)
    y = false;
    [m,n]=size(A);
    
    if m ~= n
        return
    end
        
    %   Check nonnegativity
    if sum(sum(A<0))>0
       return
    end
       
    B = (eye(n)+A)^(n-1);
    if B > 0 
        y = true;
    end
end
