function [J] = cdiag(n)
%CDIAG returns a m x n counter diagonal matrix
%      cdiag(m) square counter diag.
%
% Example: J=cdiag(4)
%
%               0   0    0    1
%               0   0    1    0
%               0   1    0    0
%               1   0    0    0
%
% See also flipud

% ----------------------------------------------------- 
% Quinlan, James
% 2020-05-14
% -----------------------------------------------------
 
     J=eye(n);
     J=flipud(J);
     
     % alternatively
     % J=(delta_{i,n-i+1}) where delta = Kronecker delta
     
     % J = zeros(n);
     % for i=1:n
     %    for j=1:n
     %         if j==n-i+1
     %              J(i,j) =1  
     %         end
     %    end
     % end
end

