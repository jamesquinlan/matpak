% ---------------------------------------------------------------------- %
% MATLAB Version:        9.2.0.556344 (R2017a).  Update 04/30/2017       %
% Prev. Version:         9.1.0.441655 (R2016b)                           %
% Purpose:               Check if nxn matrix  is Z-matrix      %
% Author:                James Quinlan                                   %
% Modified:              James Quinlan 2017-07-18                        %
% Notes:                 
% ---------------------------------------------------------------------- %

function y=iszmat(M)
%
% ISMMAT - Determines if a n x n is a M-matrix
%
% INPUT:
%       A = n x n Z-matrix (all off diagonal entries non positive)
%
% OUTPUT:
%       y = Boolean variable 0/1
%
% DEFINITION: A Z-matrix is a matrix whose off diagonal entries are
%             nonpositive
%       
% ---------------------------------------------------------------------- %

    y=false;

    [m,n]=size(M);
        
    % Square? 
    if m~=n
        y=false;
        return
    end
 
    % Check if Z-matrix (all off diag. entries are <=0)
    Z = M - diag(diag(M));
    
    if prod(prod(Z<=0))~=1
        y=false;
        return
    else
        y=true;
    end
end
