function [outputArg1] = pracrica_8_HC(inputArg1,inputArg2)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
% El programa  se corre desde la ventana del coman window
% Programa para calcular area de un triangulo
% Jose Alberto Barrios Mendez
% programa numero 1 de matlab
% Programa para calcular el area de un triangulo rectamgulo
% ademas deibuja el triangulo
% datos de entrada; base, altura, A=b*h/2

b=inputArg1;   %('introduce el valor de la base del triangulo b=');
h=inputArg2;         %input('introduce el valor de la altura del triangulo h=');
a=b*h/2;
%clc;
%formatSpec = 'El area calculada con b = %d y h = %d es a = %d %s \n';

A3='u^2';
%fprintf(formatSpec,b,h,a,A3)

figure(2);
cla

plot([0 b],[0 0,],'r');
grid on;
axis equal;
hold on;
plot([0 0],[0 h],'b');
plot([0 b],[h 0],'g');
text(b/2,h+3,'Jose alberto B.M.','FontSize',14,'Color',[.21 .23 .23]);
text(b/2,b-h,['  b=',num2str(b),'  h=',num2str(h),'  a=', ...
    num2str(a)],'fontsize',14,'color',[.12 .34 .42],'HorizontalAlignment', ...
    'center')


outputArg1 = a;

end