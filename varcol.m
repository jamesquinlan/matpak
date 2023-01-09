function y = varcol(A)
% varcol - column variation = Max. distance between columns  
%          Contained within matpak  
%
% INPUT:  A = matrix
%
% OUTPUT: y = (1/2)*max(abs(A_i - Aj))
%
% EXAMPLE: A = rand(8);
%          y = varcol(A);

% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Copyright (c) 2020, James Quinlan
% MATPAK  - Matrix Package
% MATLAB: 9.8.0.1323502 (R2020a)
% License: MIT
% Modified: 06/04/2020
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
    % -----------------------------
    y=0;
    n=size(A,2);
    for i=1:n-1
        for j=2:n
            y=max(0,norm(A(:,i)-A(:,j),'inf'));
        end
    end
    y=0.5*y;
    % -----------------------------
end


% REFERENCE:
% Curgus, B., & Jewett, R. I. (2015). Somewhat stochastic matrices. 
%               The American Mathematical Monthly, 122(1), 36-42.
% ---------------------------------------------------------------- % 

% BibTeX
%{ 
@article{curgus2015somewhat,
  title={Somewhat stochastic matrices},
  author={{\'C}urgus, Branko and Jewett, Robert I},
  journal={The American Mathematical Monthly},
  volume={122},
  number={1},
  pages={36--42},
  year={2015},
  publisher={Taylor \& Francis}
}
%}
