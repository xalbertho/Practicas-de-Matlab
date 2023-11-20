%Graicas en 3 dimensiones
%En 3D se puede Graficar puntos
%En 3D se puede Graficar lineas
%En 3D se puede Graficar superficies
%En 3D se puede Graficar solidos

hold on
grid on
plot3(0,0,0,'om')
plot3(2,5,3,'or')
plot3([0 2],[0 0],[0 0],'--r');
plot3([2 2],[0 5],[0 0],'--g');
plot3([2 2],[5 5],[0 3],'--b');
text(0,0,0,'A(0,0,0)','Fontsize',10,'color',[1 0 0],'VerticalAlignment','bottom');
text(0,5,0,'B(0,5,0)','Fontsize',10,'color',[1 0 0],'VerticalAlignment','bottom');
text(2,0,0,'C(2,0,0)','Fontsize',10,'color',[1 0 0],'VerticalAlignment','bottom');
text(2,5,0,'D(2,5,0)','Fontsize',10,'color',[1 0 0],'VerticalAlignment','bottom');
%x=[Ax Bx;Cx Dx] y=[Ay By;Cy Dy] z=[Az Bz;Cz Dz]
%x=[Ax Cx;Bx Dx] y=[Ay Cy;By Dy] z=[Az Cz;Dz Dz]
x=[0 0;2 2];
y=[0 5;0 5];
z=[0 0;0 0];
surf(x,y,z,'FaceAlpha',0.25)

x=[0 0;2 2];
y=[5 5;5 5];
z=[0 3;0 3];
surf(x,y,z,'FaceAlpha',0.25)
x=[0 0;0 0];
y=[0 0;5 5];
z=[0 3;0 3];
surf(x,y,z,'FaceAlpha',0.25)
x=[2 2;0 0];
y=[0 0;0 0];
z=[0 3;0 3];
surf(x,y,z,'FaceAlpha',0.25)
x=[2 2;2 2];
y=[5 5;0 0];
z=[0 3;0 3];
surf(x,y,z,'FaceAlpha',0.25)
view ax2