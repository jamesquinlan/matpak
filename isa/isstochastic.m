function y = isstochastic(A)
% ISSTOCHASTIC returns 1 if A is stocashtic, 0 otherwise

     m = size(A,1);
     
     nonneg = prod(prod(A>=0)); 
     rowsums = round(sum(A,2),10);
     y = false; % assume false

     if nonneg && sum(rowsums)==m && prod(rowsums)==1
          y=true;
     end
end

% NOTES:  Stochastic matrix can have complex eigs
%         Stochastic centro. can have complex eigs
