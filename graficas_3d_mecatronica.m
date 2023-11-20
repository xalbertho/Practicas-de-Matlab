x=linspace(0,10*pi,1000);
y=cos(x);
z=sin(x);

subplot(2,2,1)
plot3(x,y,z,'g','LineWidth',3);
xlabel(' EJE X')
ylabel('eje y')
zlabel('Eje z')
title 'Graficas en 3d'
%%
subplot(2,2,2)
x11=linspace(0,2*pi,500);
a=10
b=1
c=0.3;
xb=b*cos(x11.*x11);
y1=b*sin(x11.*x11);
z1=c*cos(a.*x11.*x11)
plot3(xb,y1,z1,'k','LineWidth',3)
xlabel(' EJE X')
ylabel('eje y')
zlabel('Eje z')
title 'Grafica 2'

subplot(2,2,3)

comet3(x,y,z)

subplot(2,2,4)
comet3(xb,y1,z1)


%%
% Mayas y solidos en 3d

z=[1 2 3 4 5 6 7 8 9 10; 2 4 6 8 10 12 14 16 18 20; 3 6 9 12 15 18 21 24 27 30];

mesh(z)
colormap winter
%shading("interp")
figure (2)
surf(z)
figure (3)
contour(z)
figure (4)
surfc(z)


%%
%interpolacion de datos
x=-rand(40,1)*2;
y=10*rand(40,1);
z=sin(x);
[X,Y]=meshgrid(linspace(min(x),max(x),40),linspace(min(y),max(y),40));
Z=griddata(x,y,z,X,Y,'cubic')
subplot(1,2,1)
plot3(x,y,z);
subplot(1,2,2);
mesh(X,Y,Z);



%%






