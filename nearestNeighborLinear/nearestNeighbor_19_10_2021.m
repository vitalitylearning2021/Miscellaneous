clear all
close all
clc

Ni  = 20;
xi  = linspace(0, 2 * pi, Ni);
yi  = sin(xi);

No  = 10;
xo  = sort(2 * pi * rand(1, No));

h   = xi(2) - xi(1);

yo  = yi(round(xo / h) + 1);

yoM = interp1(xi, yi, xo, 'nearest');
