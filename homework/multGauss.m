function Sum=multGauss(m,x)

% This function computes the sum of multiple gaussian input functions.
% Gaussian functions are input using a matrix with 3 columns containing the
% respective amplitudes, widths (sigmas), and positions (c values) of each
% function. 
Sum = 0;
    if size(m,2) == 3 % first check that the input matrix has 3 columns
        for n=1:size(m,1) % compute the sum
            Sum = Sum + gaussmf(x,[m(n,2),m(n,3)])*m(n,1) % scale for amplitude
        end
    else % if not 3 columns, display an error
        disp 'Error: input matrix needs 3 columns'
    end