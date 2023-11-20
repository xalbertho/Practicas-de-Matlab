%%dado el sistema de ecuaciones
%%definir los arreglos

a=[1 2 1; -2 1 3; 2 1 4];
b=[0; 2; 2];

c=[a b]; %% matriz aumentada

rref(c) %% resolucion por gauss
%%char puede hacer que completen los espacions

 %% realizar un programa para resolvar la ecuacion de segundo grado y graficar dicha funcion
clc;
clear all;

A=input("Introduzca el valor de a: ");
B=input ("Introduzca el valor de b: ");
C=input("Introduzca el valor de c: ");
% calculamps el discrimintante
dis=sqrt(B^2-4*A*C);
x1=(-B+dis)/(2*A);
x2=(-B-dis)/(2*A);
q=("La solucion 1 es: ");
s=("La solucion 2 es:" );
disp([q x1;s x2])

%grafica de la funcion

val=linspace(-9,9,100);
y=A*val.^2+B*val+C;
plot(val,y)
%%
clc
clear all



 



 %%