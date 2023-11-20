% programa numero 3 de matlab
%programa elaborado por Jose Alberto B.M.
% Programa para calcular el area de un trapecio
% ademas deibuja el trapecio
% datos de entrada; base, altura A=B+b/*h
clear all
clc;
b=12;input('introduce el valor de la base menor del trapecio b=');
h=input('introduce el valor de la altura del trapecio h=');
B=input('introduce el valor de la base mayor del trapecio B=');
a=((B+b)/2)*h;
clc;
formatSpec = ['El area calculada con b = %d h = %d y ' ...
    'B = %d es a = %d %s \n'];

A3='u^2';
fprintf(formatSpec,b,h,B,a,A3)

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
text(b/2,h-(h-2),['  b=',num2str(b),'  h=',num2str(h),'  a=', ...
    num2str(a)],'fontsize',14,'color',[.838 .63234 .4232], ...
    'HorizontalAlignment', ...
    'center')
xlabel('Base','FontSize',16,'Color','r')
ylabel('Altura','FontSize',16,'Color','r')
title('Area de un trapecio','FontSize',18,'BackgroundColor' ...
   ,'r')