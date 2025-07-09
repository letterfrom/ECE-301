% i = a(x) = x^2 * sin(x)
x1 = linspace(-2*pi, 2*pi, 1000);
a = x1.^2 .* sin(x1);
figure(1);
plot(x1, a, 'b', 'LineWidth', 2);
title('a(x) = x^2 sin(x)');
xlabel('x');
ylabel('a(x)');
grid on;

% ii =  p(x) = x + x*cos(2x)
x2 = linspace(-2*pi, 2*pi, 1000);
p = x2 + x2 .* cos(2*x2);
figure(2);
plot(x2, p, 'r', 'LineWidth', 2);
title('p(x) = x + x cos(2x)');
xlabel('x');
ylabel('p(x)');
grid on;

% iii =  g(x) = 3^x * sin(3x)
x3 = linspace(0, 2*pi, 1000);
g = (3.^x3) .* sin(3*x3);
figure(3);
plot(x3, g, 'g', 'LineWidth', 2);
title('g(x) = 3^x sin(3x)');
xlabel('x');
ylabel('g(x)');
grid on;
