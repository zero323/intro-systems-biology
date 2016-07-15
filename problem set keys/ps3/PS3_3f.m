%(3)
global a b c d
A=[1 2; 3 4];

[v,l] = eig(A);
disp(sprintf('The first eigenvector is (%0.4f,%0.4f) with eigenvalue %0.4f', v(1,1), ...
v(2,1), num2str(l(1,1))));
disp(sprintf('The second eigenvector is (%0.4f,%0.4f) with eigenvalue %0.4f', v(1,2), ...
v(2,2), num2str(l(2,2))));
 a = A(1,1);
 b = A(1,2);
 c = A(2,1);
 d = A(2,2);
 [x, y] = meshgrid(-5:0.5:5, -5:0.5:5);
 dx = a*x + b*y;
 dy = c*x + d*y;
 r = (dx.^2 + dy.^2).^0.5;
 dx = dx ./ r;
 dy = dy ./ r;

 quiver(x,y,dx,dy); hold on;
 xlabel('x(t)')
 ylabel('y(t)')
 axis([-5,5,-5,5])
 [t, e] = ode45(@updater, [0 50], [-4.123, 2.83]);
 plot(e(:,1),e(:,2),'-r', 'LineWidth', 3)
 [t, e] = ode45(@updater, [0 50], [-4.123,2.8285]);
 plot(e(:,1),e(:,2),'-g', 'LineWidth', 3);
 [t, e] = ode45(@updater, [0 50], [0.01, 0.01]);
 plot(e(:,1),e(:,2),'-b', 'LineWidth', 3);
 [t, e] = ode45(@updater, [0 50], [0.8246,-0.5658]);
 plot(e(:,1),e(:,2),'-k', 'LineWidth', 3);
 [t, e] = ode45(@updater, [0 50], [4,-2.7]);
 plot(e(:,1),e(:,2),'-m', 'LineWidth', 3);