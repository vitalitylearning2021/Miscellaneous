function yi = linearInterpolation1D(x, y, xi)

% --- Forces vectors to be columns
x = x(:); xi = xi(:); y = y(:);

% --- Gets the x spacing. One over to perform divide only once
ndx = 1 / (x(2) - x(1)); % 

% --- Subtract minimum of x from xi
xi = xi - x(1);      

% --- Fills output with NaNs
yi = NaN * ones(size(xi));

% --- Indices of nearest-lower-neighbors
fxi = floor(xi * ndx) + 1;          

% --- Finds out of bounds indices
flag = fxi < 1 | fxi > length(x) - 1;

% --- Finds in-bound indices
nflag = ~flag;

yi(nflag) = (fxi(nflag) - xi(nflag) * ndx) .* y(fxi(nflag)) + (1 - fxi(nflag) + xi(nflag) * ndx) .*y (fxi(nflag) + 1);
