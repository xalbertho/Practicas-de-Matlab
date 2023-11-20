% programa numero 3 de matlab
%programa elaborado por Jose Alberto B.M.
% Programa para calcular el area de un hexagono
% ademas deibuja el hexagono
% datos de entrada; base, apotema A=P*a/2
cla
clc;
b=input('introduce el valr de la base del hexagono b=');
ap=input('introduce el valor del apotema del hexagono ap=');
a=((6*b)*ap)/2;
clc;
formatSpec = ['El area calculada con b = %d y el ap = %d ' ...
    'es a = %d %s \n'];

A3='u^2';
fprintf(formatSpec,b,ap,a,A3)

figure(2);
cla

plot([0 b],[0 0],'r');
grid on;
axis equal;
hold on;
plot([b/2 b/2],[0 ap],'Color',[.21 .76 0]);
plot([b b+(b/2)],[0 ap],'m');
plot([0 -b/2],[0 ap]);
plot([b+b/2 b],[ap ap*2]);
plot([-b/2 0],[ap ap*2]);
plot([0 b],[ap*2 ap*2]);
text(b/2,ap+1,'Jose Alberto B.M.','FontSize',14,'Color', ...
    [.01 .33 .73]);
text(b/2,ap+3,['  b=',num2str(b),'  ap=',num2str(ap),'  a=', ...
    num2str(a)],'fontsize',14,'color',[.838 .63234 .4232], ...
    'HorizontalAlignment', ...
    'center')
xlabel('Base','FontSize',16,'Color','r')
ylabel('Altura','FontSize',16,'Color','r')
title('Area de un Hexagono','FontSize',18,'BackgroundColor' ...
   ,[.832 0.23 0.132])