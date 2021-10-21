clear all
close all
clc

Ni  = 20;
xi  = linspace(0, 2 * pi, Ni);
yi  = sin(xi);

No  = 10;
xo  = sort(2 * pi * rand(1, No));

h   = xi(2) - xi(1);

ind = floor(xo / h) + 1;
yo  = yi(ind) .* (xo - xi(ind + 1)) ./ (xi(ind) - xi(ind + 1)) + yi(ind + 1) .* (xo - xi(ind)) ./ (xi(ind + 1) - xi(ind));

yoM = interp1(xi, yi, xo, 'linear');
