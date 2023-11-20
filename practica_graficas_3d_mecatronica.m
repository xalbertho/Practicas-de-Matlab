clc
clear all

% Práctica de gráficas en 3D
x = linspace(-1.5, 1.5, 100);
y = linspace(-1, 3, 100);
%f = 100 * (y - x.^2).^2 + (1 - x).^2;

[X,Y]=meshgrid(x,y);
%F=griddata(x,y,f,X,Y,'cubic');
f = 100 * (Y - X.^2).^2 + (1 - X).^2;
figure(1)


mesh(X,Y,f)
title('Gráfica de f(x, y)')

figure(2)
surf(X,Y,f)



figure (3)


contour(X,Y,f);
figure (4)
surfc(X,Y,f)
figure (5)
contour3(X,Y,f);
figure (6)
waterfall(X,Y,f)



a = linspace(-5, 5, 40);
b = linspace(-1, 8, 40);

