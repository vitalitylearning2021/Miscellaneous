clear all
close all
clc

Ni      = 22;
% runge   = @(x)(1 ./ (1 + 25 * x.^2));
runge   = @(x)(x.^2);
xi      = linspace(-1, 1, Ni);
yi      = runge(xi);

No      = 30;
% xo      = sort(0.8 * (2 * rand(1, No) - 1));
xo      = linspace(-0.8, 0.8, No);

A       = zeros(Ni, Ni);

for k = 1 : Ni
   
    temp    = poly(xi((1 : Ni) ~= k));
    A(k, :) = temp / polyval(temp, xi(k));
    
end

yo = polyval(yi * A, xo);

x  = linspace(-1, 1, 1000);
y  = runge(x);

plot(x, y)
hold on
plot(xi, yi, 'o')
plot(xo, yo, 'x')

% [P,R,S] = lagrangepoly(xi, yi, xo);
% plot(xo, P, 'v')
