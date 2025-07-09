t = -40:0.01:40;

% Original signal a(t) defined only for t >= 0
a = @(t) 3 * t .* exp(-0.3 * t) .* sin(t);
a_t = a(t) .* double(t >= 0); % zero for t < 0

% Even and odd decompositions
a_neg_t = a(-t) .* double(-t >= 0); % zero for t > 0

a_even = 0.5 * (a_t + a_neg_t); % even component
a_odd  = 0.5 * (a_t - a_neg_t); % odd component

% Reconstructed signal
p_t = a_even + a_odd;

% Plot i: a(t)
figure;
plot(t, a_t, 'LineWidth', 1.5);
title('i. Signal a(t) = 3t e^{-0.3t} sin(t) for t ≥ 0');
xlabel('t'); ylabel('a(t)');
grid on;

% Plot ii: odd part
figure;
plot(t, a_odd, 'r', 'LineWidth', 1.5);
title('ii. Odd Part of a(t)');
xlabel('t'); ylabel('a_o(t)');
grid on;

% Plot iii: even part
figure;
plot(t, a_even, 'b', 'LineWidth', 1.5);
title('iii. Even Part of a(t)');
xlabel('t'); ylabel('a_e(t)');
grid on;

% Plot iv: reconstructed signal
figure;
plot(t, p_t, 'k', 'LineWidth', 1.5);
title('iv. Reconstructed Signal p(t) = a_e(t) + a_o(t)');
xlabel('t'); ylabel('p(t)');
grid on;
