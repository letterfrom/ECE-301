% Define time axis for signals
t = -10:0.01:10;
dt = 0.01;

% Unit step and ramp functions
u = @(x) double(x >= 0);
r = @(x) x .* u(x);

%% --- Part (i) ---
% x(t) = 2t
x1 = 2 * t;

% h(t) = t*u(t) + 2t*u(-t)
h1 = r(t) + 2 * (t .* u(-t));

% Convolution using numeric integration (discrete approximation)
y1 = conv(x1, h1) * dt;
t_conv1 = 2*t(1):dt:2*t(end); % Time range for convolution result

% Plot result for part (i)
figure;
plot(t_conv1, y1, 'b', 'LineWidth', 1.5);
title('Q2-i: Convolution of x(t) = 2t and h(t) = t*u(t) + 2t*u(-t)');
xlabel('t'); ylabel('y(t)');
grid on;

%% --- Part (ii) ---
% x(t) = exp(-t^2)
x2 = exp(-t.^2);

% h(t) = exp(-t) * u(t) + exp(t) * u(-t)
h2 = exp(-t) .* u(t) + exp(t) .* u(-t);

% Convolution
y2 = conv(x2, h2) * dt;
t_conv2 = 2*t(1):dt:2*t(end);

% Plot result for part (ii)
figure;
plot(t_conv2, y2, 'r', 'LineWidth', 1.5);
title('Q2-ii: Convolution of x(t) = e^{-t^2} and h(t) = e^{-t}u(t) + e^{t}u(-t)');
xlabel('t'); ylabel('y(t)');
grid on;
