function [ A ] = randcirculant( n, max, type,p )
%randCirculant Returns a n x n  random Circulant Matrix
%   n = size of matrix
%   max = Largest integer value in random integer generator
% type =real or complex, 1 or 0
i=sqrt(-1);
A=eye(n);



k=mod(randi(5*max,1,n),2);
if p==1
    k=ones(1,n);
else
    k=mod(randi(5*max,1,n),2)
    k=(-1).^k;
end

if type==1
    x=randi([-max,max],1,n).*k;
else
    x=randi([-max,max],1,n);
    y=randi([-max,max],1,n)*i;
    x=x+y;
end
A(1,:)=x;

    for r=2:n
        A(r,1)=A(r-1,n);
        for c=2:n
            A(r,c)=A(r-1,c-1);
           
        end
        
    end
    for m=0:n-1
        phi(m+1)=0;
        for k=0:n-1
            phi(m+1)=phi(m+1)+A(1,k+1)*exp(-2*pi*i*m*k/n)
        end
    end
        
    
end

