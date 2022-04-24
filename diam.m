function D = diam(A)
% diam(A) returns diameter of matrix defined as: max_{1<=i,j<=n} ||a_i - a_j||
% diam(A) = The largest distance between two columns
%
% INPUT: A = matrix
% 
% OUTPUT: D=diameter (largest column distance)
%
% Example: A=[0 2 -4;-1 -1 0;6 4 9];
%          D=diam(A);
% ----------------------------------------------------- %

      n=size(A,2);  % Number of Columns
      D=0;          % Initialize diameter
       
      for i=1:n-1
            for j=i+1:n
                  D=max(D,norm(A(:,i)-A(:,j),1));
            end % j
      end % i
%       
end % function

% BibTeX Citation
% ------------------------------------------------ %
% @article{doi:10.4169/amer.math.monthly.122.01.36,
% author = {Branko \"{A}urgus and Robert I. Jewett},
% title = {Somewhat Stochastic Matrices},
% journal = {The American Mathematical Monthly},
% volume = {122},
% number = {1},
% pages = {36-42},
% year  = {2015},
% publisher = {Taylor & Francis}
% }