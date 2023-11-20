hold on
grid on
title Graficas 2D
xlabel('Eje x');
ylabel('Eje y');
x1=linspace(1,6,100);
y1=linspace(-4,4,100);

a=x1.^2+y1.^2;
z1=a;
plot(a,z1)

x2=linspace(-4,4,200);
y2=tan(x2);
plot(x2,y2)

y3=linspace(-9,9,200);
z3=y.^2-6;
plot(y3,z3)

legend('z=x^2+y^2','z=tan(x)','y^2-6')