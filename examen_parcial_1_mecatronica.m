

R = 4; 
L = 1.3; 
V = 12; 


t1 = 0:0.01:0.5; 
t2 = 0.49:0.01:2;  

f1 = V/R * (1 - exp(-R*t1/L));


f2 = exp(-R*t2/L) * (V/R * (exp(-0.5/L) - 1));


hold on
plot(t1,f1,'--r')
plot(t2,f2,'*b')

xlabel('Tiempo (s)');
ylabel('Corriente (A)');
title('Corriente en función del tiempo');
legend('f1')
legend('f2')
grid on;

%%
theta=linspace(0,2*pi,1000);
r1=2+sqrt(cos(theta.^2)+sin(theta.^2));
r2=exp(theta/3);

subplot(1,2,1);
polarplot(theta,r1,'-r','LineWidth',1);
title('2+sqrt(cos(theta.^2)+sin(theta.^2))' )

subplot(1,2,2);
polarplot(theta,r2,'*b','LineWidth',2);
title('exp(theta/3)')

%%

x1=[-5:.5:5];
y1=[-5:.5:5];
[X,Y]=meshgrid(x1,y1)
z=sin(sqrt(X.^2+Y.^2));
mesh(X,Y,z,'FaceColor','none')
title ('Grafico de malla')
xlabel('Eje x')
ylabel('eje y')
zlabel('Eje z');
colorbar