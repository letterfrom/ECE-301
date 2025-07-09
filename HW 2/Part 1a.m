n = -10:10; % Discrete time range

% Unit step function
u = @(x) double(x >= 0);

% Define inputs
x1 = u(n);         % x1[n] = u[n]
x2 = -u(n);        % x2[n] = -u[n]
x3 = u(n - 1);     % x3[n] = u[n - 1]

% Compute output y[n]
denominator = x2 + x3;
y = zeros(size(n)); % Initialize

% Avoid division by zero
for i = 1:length(n)
    if denominator(i) ~= 0
        y(i) = x1(i) / denominator(i);
    else
        y(i) = NaN; % or Inf, depending on your preference
    end
end

% Plot the result
figure;
stem(n, y, 'filled');
xlabel('n');
ylabel('y[n]');
title('System Output y[n] = x_1[n] / (x_2[n] + x_3[n])');
grid on;
