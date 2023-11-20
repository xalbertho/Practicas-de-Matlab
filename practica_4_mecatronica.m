
%Practica #4 mesh and surf

x1 = linspace(-10, 10, 100);
y1 = linspace(-10, 10, 100);

[X1, Y1] = meshgrid(x1, y1);  

f = (sin(sqrt(X1.^2 + Y1.^2))) ./ sqrt(X1.^2 + Y1.^2);

figure(1)
mesh(X1, Y1, f)
title('Gráfico con mesh')

figure(2)
surf(X1, Y1, f)
title('Gráfico con surf')


x2=linspace(-2,2,10);
y2=linspace(-2,2,10);

[X2, Y2] = meshgrid(x1, y1); 

f2=X2.*exp(-X2.^2-Y2.^2)
figure(3)
mesh(X2, Y2, f2)
title('Gráfico con mesh')

figure(4)
surf(X2, Y2, f2)
title('Gráfico con surf')


%f1=x*exp(-x.^2-y.^2)


