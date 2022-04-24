function  L = iscentro( C,d )
% ISCENTRO determines if C is centrosymmetric matrix
%          returns logical L=0/1
%

    if nargin<2
        d = 8;
    end

    C = double(C);

    % As always, beware of round-off error.
    C = round(C,d); % d decimals of accuracy

    [m, n]=size(C);

    % Counter-Identity (a.k.a. exchange matrix)
    J = rot90(eye(n));

    % Assume false
    L=false;

    L = logical(prod(prod(J*C*J==C)));
    % all(J*C*J == C)

end

% alternative loop structure
% for i=1:m
%     for j=1:n
%         if C(i,j)~=C(m-i+1,n-j+1)
%             L=0;
%             return
%         end
%     end
% end
    
