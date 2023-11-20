z=peaks(25);
mesh(z);
hold on;
surf(z);
%% Grafica de campos vectoriales

x=-2:.1:2;
y=-1:.2:1;
[xx,yy]=meshgrid(x,y);
zz=xx.*exp(-xx.^2-yy.^2);
[px,py]=gradient(zz,.2,.2);
quiver(x,y,px,py);
xlim([-2 2]);





%%