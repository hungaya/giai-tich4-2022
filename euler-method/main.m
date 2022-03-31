clc
clear all
close all

syms x f y

% fde = @(x, y) x * (1 + x.^2) / (y.^2);
% fex = @(x) (3 * (x.^2) / 2 + 3 * x.^4 /4 + 1) .^ (1/3);
% a = 0;
% b = 6;
% h = 0.5;
% y0 = 1;

% slide 52
% (1)
fde = @(x, y) 1 ./ (x - y) + 1;
fex = @(x) (1 - 2*x) .^ (1/2) + x;
a = 0;
b = 0.4;
h = 0.03;
y0 = 1;

% slide 52
% (2)
% fde = @(x, y) x.^2 + 2*x.*y - 1 + y.^2;
% fex = @(x) - x - 1./(x-2);
% a = 1;
% b = 2;
% h = 0.1;
% y0 = 0;

% slide 52
% (3)
% fde = @(x, y) (4*x + y - 1).^2;
% fex = @(x) 1 - 4*x + 2*tan(2*(x + atan(6)/2 - 3));
% a = 3;
% b = 4;
% h = 0.1;
% y0 = 1;

% slide 52
% % (4)
% fde = @(x, y) x - y + 1 + 1 ./ (y - x);
% fex = @(x) x + 1;
% a = 1;
% b = 2;
% h = 0.1;
% y0 = 2;

% slide 57
% % (a)
% fde = @(x, y) 2.*y + exp(x) - x;
% fex = @(x) exp(2*x) - exp(x) + x/2 + 1/4;
% a = 0;
% b = 1;
% h = 0.1;
% y0 = 1/4;

% slide 57
% (b)
% fde = @(x, y) sin(x) .* cos(x) - y .* cos(x);
% fex = @(x) sin(x) - 1 + exp(-sin(x));
% a = 0;
% b = 1;
% h = 0.1;
% y0 = 0;

% slide 57
% (c)
% fde = @(x, y) (asin(x) - y) / (1 - x.^2).^(1/2);
% fex = @(x) asin(x) - 1 + exp(-asin(x));
% a = 0;
% b = 1;
% h = 0.1;
% y0 = 0;

% slide 57
% (d)
% fde = @(x, y) exp(-x) ./ (1 - x) - y;
% fex = @(x) exp(-x) .* (exp(2) - log(abs(1-x)));
% a = 2;
% b = 3;
% h = 0.1;
% y0 = 1;

% slide 62
% (a)
% fde = @(x, y) ((y.^2) .* log(x) - y) ./ x;
% fex = @(x) 1 ./ (log(x) + 1);
% a = 1;
% b = 2;
% h = 0.1;
% y0 = 1;

% slide 62
% (b)
% fde = @(x, y) 3 * (x.^5 + x.^2) .* (y.^(2/3)) + 9 .* (x.^2) .* y;
% fex = @(x) (-(x.^3 + 2)/3 + 5*exp(x.^3)/3).^3;
% a = 0;
% b = 1;
% h = 0.1;
% y0 = 1;

% slide 62
% (c)
% fde = @(x, y) (y.^2) .* (x.^3 + 1) .* sin(x) - (3* (x.^2) .* y) ./ (x.^3 + 1);
% fex = @(x) 1 ./ ((x.^3 + 1) .* cos(x));
% a = 0;
% b = 0.5;
% h = 0.02;
% y0 = 1;

% slide 67
% (a)
% fde = @(x, y) (y.^2 + 2.*x.*y) / (x.*2);
% fex = @(x) x.^2 / (2 - x);
% a = 1;
% b = 1.9;
% h = 0.1;
% y0 = 1;

% slide 67
% (b)
% fde = @(x, y) - (x.^2 + y.^2) / (x.*y);
% fex = @(x) (3 ./ (2 * x.^2) - (x.^2) / 2) .^ (1/2);
% a = -1;
% b = -0.1;
% h = 0.1;
% y0 = 1;

test(a, b, y0, h, fde, fex);
