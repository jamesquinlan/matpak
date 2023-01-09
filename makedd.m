% Transforms A to a diagonally dominate matrix by randomly adding values to
% the diagonal elements.  
% 
% INPUT: matrix A
% OUTPUT: A diagonally dominate version of A
% Example: 
% 	A = [1 2 3;4 5 6;7 8 9]
% 	B = makedd(A);
%
% See also matpak

% ISCENTRO is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% ----------------------------------------------------------
function B = makedd(A)
    B = A;
    n = size(A,1);

    while ~isdiagdom(B) 
        L = sum(B,2)-diag(B)>=diag(B);  
        D = diag(diag(randi([1,n],1,n))*L);
        B = B+D;
    end
end
