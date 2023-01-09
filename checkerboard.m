% checkerboard pattern +1 / -1 matrix 
% 
% Definition: A is checkerboard if sign(a(i,j)) = (-1)^(i+j)
% 
% Checkerboard matriices are inverse positive []
% Reference:
% 
% Example: C = checkerboard(6)
%     1    -1     1    -1     1    -1
%    -1     1    -1     1    -1     1
%     1    -1     1    -1     1    -1
%    -1     1    -1     1    -1     1
%     1    -1     1    -1     1    -1
%    -1     1    -1     1    -1     1
% 
% Note: D = diag(C(:,1)) = Diagonal Checkerboard
% 
% See also matpak

% checkerboard is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------
function C = checkerboard(n)
    % Code from Cleve Moler
    [J, I] = meshgrid(1:n,1:n);
    C = (-1).^(I+J);
end

%{
Old Algorithm

    if mod(m,2) ~= 0
        n = (m + 1) / 2; 
    else
        n = m / 2;
    end

    C = kron(ones(1,n),[1 -1 ]);
    C = toeplitz(C);

    if mod(m,2) ~= 0
        C = C(1:end-1,1:end-1);
    end
%}
