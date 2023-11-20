% Datos de velocidad (v) y tiempo (t)
v = [0.0, 30.0, 50.0, 65.0, 70.0];
t = [0.0, 3.7, 7.1, 11.1, 14.4];

% Ajuste del polinomio de grado 2 utilizando mínimos cuadrados
coefficients = polyfit(t, v, 2);

% Crear un vector de tiempo para evaluar el polinomio
t_fit = linspace(0, 14.4, 100); % Vector de tiempo de 0 a 14.4

% Evaluar el polinomio en los valores de tiempo
v_fit = polyval(coefficients, t_fit);

% Mostrar el polinomio de ajuste
fprintf('El polinomio de grado 2 que mejor se ajusta a los datos es: v(t) = %.3ft^2 + %.3ft + %.3f\n', coefficients(1), coefficients(2), coefficients(3));

% Gráfico de los datos originales y el polinomio de ajuste
plot(t, v, 'o', t_fit, v_fit, '-')
legend('Datos', 'Ajuste')
xlabel('Tiempo (s)')
ylabel('Velocidad (km/h)')
title('Ajuste polinomial de grado 2')
grid on
syms t;  % Definir t como una variable simbólica

% Definir la función original
v = @(t) -0.300*t.^2 + 9.184*t + 0.031;

% Calcular la derivada de la función
dv_dt = diff(v(t), t);

% Graficar la función original y su derivada
figure;
subplot(2, 1, 1);
ezplot(v, [0, 14.4]);  % Graficar la función original en el rango de tiempo
xlabel('Tiempo (s)');
ylabel('Velocidad (km/h)');
title('Función original');

subplot(2, 1, 2);
ezplot(dv_dt, [0, 14.4]);  % Graficar la derivada de la función en el rango de tiempo
xlabel('Tiempo (s)');
ylabel('Derivada de la velocidad (km/h)');
title('Derivada de la función');

% Ajustar los títulos y espaciado de los subplots
sgtitle('Gráficos de la función original y su derivada');
subplot(2, 1, 1);
title('Función original');

