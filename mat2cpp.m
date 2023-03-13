% MAT2CPP - Write matrix
% mat2cpp(A) writes MATLAB matrix A to C++ (for use in .cpp)
%
% INPUT:  
%       A       = m x n matrix
%       matname = Name of matrix (default 'A')
%
%           
% See also fopen, fclose, matpak

% -------------------------------------------------------------------------
% Quinlan, J.
% 2023-02-19
% -------------------------------------------------------------------------

function mat2cpp(A,matname)

    if nargin < 2
        matname = 'A';
    end
    matname = strcat(matname);
    [m,n] = size(A);

    % Write to File
    fid = fopen(strcat(matname,'.txt'),'w');
    fprintf(fid,'%s = {\n',matname);
    for i = 1:m
        fprintf(fid,'{%e, ',A(i,1));
        for j = 2:n-1
            fprintf(fid,'%e, ',A(i,j));
        end
        fprintf(fid,'%e },\n ',A(i,n));
    end
    fprintf(fid,'};');
    fclose(fid);
end
