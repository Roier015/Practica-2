
% Condiciones iniciales
theta1_0 = 0;                    % Inicial para theta1
theta2_0 = deg2rad(35);          % Inicial para theta2 (convertido a radianes)
omega1_0 = 0;                    % Inicial para omega1 (theta1 prima)
omega2_0 = 0;                    % Inicial para omega2 (theta2 prima)

% Vector de condiciones iniciales
x0 = [theta1_0, omega1_0, theta2_0, omega2_0];

% Tiempo de simulación
tspan = [0 10];  % Simular de 0 a 10 segundos

% Llamar a la función ODE con ode45
[t, x] = ode45(@(t, x) practica2(t, x), tspan, x0);

% Graficar resultados
figure;
subplot(2,1,1);
plot(t, x(:,1));
grid on;
xlabel('Tiempo (s)');
ylabel('Ángulo (rad)');
legend('\theta_1');

subplot(2,1,2);
plot(t,x(:,2));
grid on;
xlabel('Tiempo (s)');
ylabel('Ángulo (rad)');
legend('\theta_1');


