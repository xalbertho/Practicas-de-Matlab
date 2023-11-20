a=linspace(5/9*pi,10*pi,500);
b=linspace(1/7*pi,10*pi,500);
x=cos(a)-cos(b);
y=(2.*sin(1/2.*(a+b)).*sin(1/2.*(b-a)));

%plot(a,x,'--c','LineWidth',4 );
hold on
plot(a,y,'r','LineWidth',8);
plot(a,x,'c','LineWidth',4 );

legend('cos(a)-cos(b)','2.*sin(1/2.*(a+b)).*sin(1/2.*(b-a))')