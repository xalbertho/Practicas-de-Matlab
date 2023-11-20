
R = 4;      
L = 1.3;   
V = 12;      
t = 0:0.01:2;  

% Cálculo de la corriente en función del tiempo
t1 = t(t <= 0.5);
t2 = t(t > 0.5);
i1 = (V / R) * (1 - exp(-R * t1 / L));
i2 = exp(-R * t2 / L) * (V / R) * (exp(-0.5 / L) - 1);

% Gráfica
figure;
hold on;
plot([t1,t2],[i1,i2])

xlabel('Tiempo (s)');
ylabel('Corriente (A)');
title('Corriente en función del tiempo');
legend('0 <= t <= 0.5 s', '0.5 s <= t <= 2 s');
grid on;
hold off;
