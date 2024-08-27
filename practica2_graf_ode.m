[t,x] = ode45(@practica2,[0,10],[0,deg2rad(35),0,0]);

figure(1);
subplot(2,1,1)
plot(t,x(:,1));
grid on;
ylabel('\theta_1(rad)');
xlabel('Tiempo (s)');

subplot(2,1,2)
plot(t,x(:,2));
grid on;
ylabel('\theta_1(rad)');
xlabel('Tiempo (s)');



