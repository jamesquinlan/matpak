% RANDDD    Generates a random diagonally dominate matrix
% INPUT:
%   n = size
%   t = type (integer, normal, etc.) - Currently not implemented
%
% OUTPUT:
%   A = Diagonally dominate matrix  
%
% See also matpak, isdiagdom

% RANDDD is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------
function A = randdd(n,~)
    A=randi(50,n,n);

    while ~isdiagdom(A)
       L = sum(A,2)-diag(A) >= diag(A);  
       D = diag(diag(randi([1,n],1,n))*L);
       A = A+D;
    end

    A=10*diag(diag(A))+A;
    A=A./sum(A,2);
end

