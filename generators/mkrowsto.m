function S = mkrowsto(m,n,d)



     if nargin<2
          n=m;
     end
     if nargin<3
          d=1;
     end
     
     S=rand(m,n);
     %S=abs(randn(m,n));
     
     S=S./sum(S,2);
     
     
     % NOTE: stochastic matrices can have complex eigenvalues
     % e.g., mkrowsto(5)

end
