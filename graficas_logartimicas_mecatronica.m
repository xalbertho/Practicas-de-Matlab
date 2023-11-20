% Graficas 

%semilogx
%eje logaritmico en x-------> x intervalo de 0.5 a 3

grid on
x=logspace(.5,3,1000);
f=2.^(-2.*x+10);

%%
figure (1)
semilogx(x,f,'--r')
legend('Grafica semilog eje x')
figure(5)
semilogy(x,f,'c')
legend('gradica semilogy')
%%
%figure(3)
%loglog(x,f,'g')
legend('grafica loglog')

subplot(2,2,1)
semilogx(x,f,'--r')

subplot(2,2,2)
semilogy(x,f,'c')

subplot(2,2,3)
loglog(x,f,'g')

subplot(2,2,4)
plot(x,f)
