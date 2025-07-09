t = -10:0.01:10; 
n = -10:10;   

% Unit step function
u = @(x) double(x >= 0);

% i. 3δ(t) + 4δ(t)
delta_t = zeros(size(t));
delta_t(t == 0) = 1; % Dirac delta at t=0 (approximation)
signal1 = 3 * delta_t + 4 * delta_t;
figure;
stem(t, signal1, 'filled');
title('i. 3\delta(t) + 4\delta(t)');
xlabel('t'); ylabel('Amplitude');
xlim([-10, 10]);
grid on;

% ii. 2u(t) + 3u(t) + 4
signal2 = 2 * u(t) + 3 * u(t) + 4;
figure;
plot(t, signal2, 'LineWidth', 1.5);
title('ii. 2u(t) + 3u(t) + 4');
xlabel('t'); ylabel('Amplitude');
xlim([-10, 10]);
grid on;

% iii. 4u[n] + 1
signal3 = 4 * u(n) + 1;
figure;
stem(n, signal3, 'filled');
title('iii. 4u[n] + 1');
xlabel('n'); ylabel('Amplitude');
xlim([-10, 10]);
grid on;

% iv. 2r(t) + 3u(t)
r = @(x) x .* u(x); % Ramp function
signal4 = 2 * r(t) + 3 * u(t);
figure;
plot(t, signal4, 'LineWidth', 1.5);
title('iv. 2r(t) + 3u(t)');
xlabel('t'); ylabel('Amplitude');
xlim([-10, 10]);
grid on;

% v. u(t + 2) + u(t − 2) + 2
signal5 = u(t + 2) + u(t - 2) + 2;
figure;
plot(t, signal5, 'LineWidth', 1.5);
title('v. u(t+2) + u(t−2) + 2');
xlabel('t'); ylabel('Amplitude');
xlim([-10, 10]);
grid on;
