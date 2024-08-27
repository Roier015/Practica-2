function dx = practica2(t,x);

m1 = 0.2;
m2 = 0.1;
l1 = 0.3;
l2 = 0.25;
g = 9.81;
c1 = 0;

dx = zeros(4,1);
%variables de estado
theta1 = x(1);
theta2 = x(2);
dtheta1 = x(3);
dtheta2 = x(4);

%despeje del sistema
A = [(m2+m1)*l1, m2*l2*cos(theta2-theta1); 
    l1*cos(theta2-theta1), l2];

B = [c1, -m2*l2*dtheta2*sin(theta2-theta1); 
    l1*sin(theta2-theta1)*dtheta1, 0];

C = [(m1+m2)*g*sin(theta1); 
    g*sin(theta2)];

ainv = inv(A);


ddtheta = ainv*(-B * [dtheta1; dtheta2 ] - C);

%dinamica del sistema

dx(1) = dtheta1;
dx(2) = dtheta2;
dx(3) = ddtheta(1);
dx(4) = ddtheta(2);



