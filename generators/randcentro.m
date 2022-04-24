function [ C ] = randcentro( m,n,type )
% RANDCENTRO returns random m x n centrosymmetric matrix
%    
     if nargin<3
         type=1;
     end
    
     if nargin < 2
        n = m; 
     end
     
    k=ceil(m*n/2);
    switch type
        case 1
            x=randi([0,20],1,k);
        case 2
            x=randn(1,k);
        case 3
            x=rand(1,k);
        case 4
            x=randi([-10,10],1,k);
        otherwise
            x=randi([-10 10],1,k);
    end
    C = centrosym(x, m, n);
end

