function y = isrso(A)
% determines if A is row sum one
% 
% INPUT: matrix A
% OUTPUT: logical (1/0)
%
% See also isstochastic.m

% Quinlan, James.  09/12/2017 
% -----------------------------

    [m,n]=size(A);
    rowsum=round(sum(A,2),8); 
    y = false; % assume false

    if (sum(rowsum)==m) && (prod(rowsum)==1)
        y = true;
    end
end
