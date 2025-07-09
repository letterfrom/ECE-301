% Fourier Series coefficients for x(t) = 3t + (3/4)cos(2*pi*t) + (1/4)sin(4*pi*t)
% up to the 7th harmonic. Plots magnitude and phase spectrum.

clear; clc;
% Signal parameters
T = 1;           % Fundamental period (since cos(2*pi*t) has period 1)
w0 = 2*pi/T;     % Fundamental frequency
N = 7;            % Number of harmonics

% Time vector for integration
t = linspace(-T/2, T/2, 1000);

% Define the signal
x = 3*t + (3/4)*cos(2*pi*t) + (1/4)*sin(4*pi*t);

% Compute Fourier coefficients
Cn = zeros(1, 2*N+1);    % n = -N ... 0 ... N
n_vec = -N:N;

for idx = 1:length(n_vec)
    n = n_vec(idx);
    % Complex Fourier coefficient formula:
    integrand = @(t) (3*t + (3/4)*cos(2*pi*t) + (1/4)*sin(4*pi*t)) .* exp(-1j*n*w0*t);
    Cn(idx) = (1/T)*integral(integrand, -T/2, T/2);
end

% Magnitude and Phase
mag = abs(Cn);
phase = angle(Cn);

% Plot Magnitude Spectrum
figure;
subplot(2,1,1);
stem(n_vec, mag, 'filled');
title('Magnitude Spectrum of x(t) = 3t + (3/4)cos(2*pi*t) + (1/4)sin(4*pi*t)');
xlabel('Harmonic Number n');
ylabel('|C_n|');
grid on;

% Plot Phase Spectrum
subplot(2,1,2);
stem(n_vec, phase, 'filled');
title('Phase Spectrum of x(t) = 3t + (3/4)cos(2*pi*t) + (1/4)sin(4*pi*t)');
xlabel('Harmonic Number n');
ylabel('Phase(C_n) [rad]');
grid on;
