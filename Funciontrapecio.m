function [outputArg1] = Funciontrapecio(inputArg1,inputArg2,inputArg3)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
%programa elaborado por Jose Alberto B.M.
% Programa para calcular el area de un trapecio
% ademas deibuja el trapecio
% datos de entrada; base, altura, A=B+b/2*h
cla
clc;
B=inputArg1;    
b=inputArg2;    

h=inputArg3;     

a=(B+b)*h/2;
clc;

figure(2);
cla

plot([0 B],[0 0],'r');
grid on;
axis equal;
hold on;
plot([0 b],[h h],'Color',[.21 .76 0]);
plot([0 0],[0 h],'m');
plot([0 0],[h h])
plot([B b],[0 h])
text(b/2,h+3,'Jose alberto B.M.','FontSize',14,'Color', ...
    [.01 .33 .73]);
text(b/2,h-(h-2),['B=',num2str(B) '  b=',num2str(b),'  h=',num2str(h),'  a=', ...
    num2str(a)],'fontsize',14,'color',[.838 .63234 .4232], ...
    'HorizontalAlignment', ...
    'center')
xlabel('Base','FontSize',16,'Color','r')
ylabel('Altura','FontSize',16,'Color','r')
title('Area de un trapecio','FontSize',18,'BackgroundColor' ...
   ,'r')
outputArg1 = a;
end