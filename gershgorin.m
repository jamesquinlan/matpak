% GERSHGORIN - Plots circles and eigenvalues of matrix A
% 
% INPUT:
%   A = Square matrix
%
% See also matpak, e, swaprow

% GERSHGORIN is part of MATPAK matrix utility package
% MIT License
% (C) 2020 Quinlan, James
% Modification of Mario Berges
% ----------------------------------------------------------
function gershgorin(A)
    hold off
    if size(A,1) ~= size(A,2)
        error('Matrix should be square');
    end
    D = diag(A);
    
    % Center and radii
    h = real(D);
    k = imag(D);
    r = sum(abs(A - D.*eye(size(A,1))),2);
    
    % Plot
    N = 256;
    t = (0:N)*2*pi/N;
    for i = 1:size(A,1)
        plot( r(i)*cos(t)+h(i), r(i)*sin(t)+k(i) ,'-');
        hold on;
        % plot( h(i), k(i),'+');
    end
    axis equal;
    
    % Compute Eigenvalues
    evals = eig(A);
    for i=1:size(evals)
        p = plot(real(evals(i)),imag(evals(i)),'r*');
    end
    hold off;
    legend(p,'Eigenvalues');
end