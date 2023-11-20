%%
x=linspace(-pi,pi,1000);


y=sin(x);

hold on
plot(x,y,'m');
grid on
axis equal
title('Grafica sinoidal de \alpha')
xlabel('Eje x');
ylabel('Eje y');
%%text(0,.2,'ola')

%hold on
t=x.^3;
plot(x,t,'y')
z=cos(x);
plot(x,z,'k')
legend('sin(x)','cos(x)','x^3')












