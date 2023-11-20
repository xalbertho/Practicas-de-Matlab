x=linspace(-10,20,300000);
y=sin(x);
% Graficas de barras
figure (1)
bar(x,y)
%graficas en escalera
figure(2)
stairs(x,y)

%graficas de puntos
figure (3)
stem(x,y)

%histogramas
z=rand(500,1);
n=linspace(5,10,500);
figure (4)
hist(z,n)

%GRAFICAS DE PASTEL
figure (5)
A=[3,4,5,8,5];
pie(A)

figure (6)
comet(x,y)
%%

A=[3,3,4,5,8];
et={'V1','V2','V3','V4','V5'};
e=[0,1,0,1,0];
%pie(A,et)
pie3(A,e,et)



%%