a=linspace(0,2*pi,1000);

subplot(2,2,1)
f1=(2*cos(a*4))
polarplot(a,f1,'--r')
%legend('(2*cos(a*4))')

subplot(2,2,2)
f2=5-sin(5*a);
polarplot(a,f2)
%legend('5-sin(5*a)')

subplot(2,2,3)
f3=sqrt(25*cos(2*a))
polarplot(a,f3,'-b')
%legend('sqrt(25*cos(2*a))')

subplot(2,2,4)
f4=-1+cos(a)
polarplot(a,f4,'*g')
%legend('-1+cos(a)')

