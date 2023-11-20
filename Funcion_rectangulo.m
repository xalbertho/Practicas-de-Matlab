function [outputArg1] = Funcion_rectangulo(inputArg1,inputArg2)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

%programa elaborado por Jose Alberto B.M.
% Programa para calcular el area de un rectangulo
% ademas deibuja el rectangulo
% datos de entrada; base, altura A=b*h
clc;
b=inputArg1; %input('introduce el valor de la base del rectangulo b=');
h=inputArg2;  % input('introduce el valor de la altura del rectangulo h=');
a=b*h;
clc;
formatSpec = 'El area calculada con b = %d y h = %d es a = %d %s \n';

A3='u^2';
fprintf(formatSpec,b,h,a,A3)

figure(2);
cla

plot([0 b],[0 0],'-r');
grid on;
axis equal;
hold on;
plot([0 0],[0 h],'Color',[0 0 .23]);
plot([0 b],[h h],'m');
plot([b b],[0 h])
text(b/2,h+3,'Jose alberto B.M.','FontSize',14,'Color',[.01 .33 .73]);
text(b/2,h-(h-2),['  b=',num2str(b),'  h=',num2str(h),'  a=', ...
    num2str(a)],'fontsize',14,'color',[.838 .63234 .4232],'HorizontalAlignment', ...
    'center')
xlabel('Base','FontSize',16,'Color','r')
ylabel('Altura','FontSize',16,'Color','r')
title('Area de unRectangulo','FontSize',18,'BackgroundColor','c')
outputArg1 = a;