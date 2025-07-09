t = -10:0.01:10; % Time vector (continuous)

% Define unit step function
u = @(x) double(x >= 0);

% Input signals
x1 = u(t);            % x1(t) = u(t)
x2 = 2 * u(t);        % x2(t) = 2u(t)
x3 = 0.5 * u(t - 1);  % x3(t) = 0.5u(t - 1)

% System outputs
y1 = 2 * x1 + 3 * x2 + x3;
y2 = 4 * x1 - x2 + x3;

% Plot y1(t)
figure;
plot(t, y1, 'b', 'LineWidth', 1.5);
title('y_1(t) = 2x_1(t) + 3x_2(t) + x_3(t)');
xlabel('t'); ylabel('y_1(t)');
grid on;

% Plot y2(t)
figure;
plot(t, y2, 'r', 'LineWidth', 1.5);
title('y_2(t) = 4x_1(t) - x_2(t) + x_3(t)');
xlabel('t'); ylabel('y_2(t)');
grid on;
