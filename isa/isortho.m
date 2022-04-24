function L = isortho(Q)
% isortho(A) determines if A is an orthogonal matrix (i.e., orthonormal column
% vectors)
%  
% INPUT: 
%    Q (n x n matrix) 
%
% OUTPUT:
%    L = Logical (1=True, 0 = False)
%
% NOTES:
%    Defintion: norm(v) = sqrt(<v,v>)  
%    Defintion: u and v are orthogonal is <u,v>=0.  
%    Definition:
%         An orthonormal set of vectors is an orthogonal set of unit
%         vectors
%    Definition: 
%         Q is orthogonal if the columns form an orthonormal set
%    Theorem: 
%         An n x n matrix Q is orthongoal if and only if Q'Q=I
%
% REFERENCES:
%    Golub, G. H., & Van Loan, C. F. (2012). Matrix computations (Vol. 3). JHU Press.
%
%    Leon, S. (2011). Linear Algebra with Applications (8th).  Pearson.
%
% See also matpak

% Author: Quinlan, J. 
% --------------------------------------------------------------------------------------------
    L = false; 
    [~,n]=size(Q);
    
    if all(Q'*Q==eye(n),'all')            
        L = true;
        return
    elseif all(abs(Q'*Q-eye(n))<1e-15*ones(n),'all')
        L = true;
        return
    end
end

