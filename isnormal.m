function Y = isnormal(A)
% isnormal True if A is a normal matrix.
%
% Definition:  A NORMAL iff A'*A=A*A'
% 
% Round-off error considerations:
% all(A'*A-A*A')

% ---------------------------------------- %
% Quinlan, J.  2018/12/27


     Y=false;
     [m,n]=size(A);
     
     if (m==n) && isequal(A'*A,A*A')
        Y=true;  
     end
end

