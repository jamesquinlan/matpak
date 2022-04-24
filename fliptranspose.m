% FLIPTRANSPOSE - returns the flip-transpose of a square matrix A	
%
% INPUT: Matrix A (n x n)
% OUTPUT: A matrix that has been reflection about the counter-diagonal
%
% See also matpak,

% FLIPTRANSPOSE is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------
function Af = fliptranspose(A)
    [m,n]=size(A);
    if m==n
        J = counteridentity(n);
        Af = J*A.'*J;
    else
        error('Matrix not square');
    end
end

