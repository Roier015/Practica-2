function dy = practica2(t, x)
    % Parámetros del sistema
    m1 = 0.2;
    l1 = 0.3;
    m2 = 0.1;
    l2 = 0.25;
    g = 9.81;

    % Inicialización del vector de derivadas
    dy = zeros(4,1);

    % Variables de estado
    theta1 = x(1);  % x1 = theta1
    omega1 = x(2);  % x2 = omega1
    theta2 = x(3);  % x3 = theta2
    omega2 = x(4);  % x4 = omega2

    % Ecuaciones de las derivadas
    dy(1) = omega1;  % x1' = omega1
    dy(3) = omega2;  % x3' = omega2

    % Matriz del sistema y vector
    A = [(m1+m2)*l1, m2*l2*cos(theta2-theta1);
         l2*cos(theta2-theta1), l1];
    B = [-(m2*l2*omega2^2*sin(theta2-theta1)) - (m1+m2)*g*sin(theta1);
         -(l1*omega1^2*sin(theta2-theta1)) - g*sin(theta2)];

    % Resolviendo para omega1' (dy(2)) y omega2' (dy(4))
    omega_dot = A \ B;

    % Asignación de las derivadas de omega1 y omega2
    dy(2) = omega_dot(1);  % x2' = omega1'
    dy(4) = omega_dot(2);  % x4' = omega2'
end
