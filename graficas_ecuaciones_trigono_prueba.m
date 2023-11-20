% Definimos el rango de valores de x
x = linspace(0, 2*pi, 1000);  % Valores de 0 a 2*pi con 1000 puntos

% Evaluamos la función sin(x)
y = sin(x);

% Encontramos los valores donde sin(x) es igual a 0
soluciones = x(y == 0);

% Graficamos la función seno
plot(x, y, 'b', 'LineWidth', 2);
hold on;

% Marcamos los puntos de solución en la gráfica
scatter(soluciones, zeros(size(soluciones)), 'ro', 'Filled');

% Etiquetas y leyenda
xlabel('x');
ylabel('sin(x)');
title('Soluciones de sin(x) = 0');
legend('sin(x)', 'Soluciones', 'Location', 'Best');

% Mostramos la cuadrícula
grid on;

% Ajustamos el límite del eje y
ylim([-1.2, 1.2]);

% Muestra la solución
disp('Soluciones de sin(x) = 0:');
disp(soluciones);
