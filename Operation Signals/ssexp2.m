clear all;
close all;
clc;

% Define the time vector
tmin = -3; tmax = 5; dt = 0.2;
t = tmin:dt:tmax;

% Define the original signal x(t)
x = (1.0 + t) .* (t >= 0 & t <= 2);

% Define the transformations of x(t)
y0 = x;              % Original signal
y1 = 1.5 * x;        % Amplified signal
y2 = 0.5 * x;        % Attenuated signal
y3 = (1.0 + (2 * t)) .* (2 * t >= 0 & 2 * t <= 2);    % Time compressed signal
y4 = (1.0 + (0.5 * t)) .* (0.5 * t >= 0 & 0.5 * t <= 2); % Time expanded signal
y5 = (1.0 + (t - 2)) .* ((t - 2) >= 0 & (t - 2) <= 2);   % Delayed signal
y6 = (1.0 + (t + 2)) .* ((t + 2) >= 0 & (t + 2) <= 2);   % Advanced signal

% Compute the min and max values for y-axis
ymin = min([min(y0), min(y1), min(y2), min(y3), min(y4), min(y5), min(y6)]);
ymax = max([max(y0), max(y1), max(y2), max(y3), max(y4), max(y5), max(y6)]);

% Plot the original and amplitude-scaled signals
subplot(3,3,1); plot(t, y0); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x(t)'); title('Signal x(t)');
subplot(3,3,2); plot(t, y1); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x1(t)'); title('Amplified signal 1.5x(t)');
subplot(3,3,3); plot(t, y2); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x2(t)'); title('Attenuated signal 0.5x(t)');

% Plot the original and time-scaled signals
subplot(3,3,4); plot(t, y0); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x(t)'); title('Signal x(t)');
subplot(3,3,5); plot(t, y3); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x3(t)'); title('Time compressed signal x(2t)');
subplot(3,3,6); plot(t, y4); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x4(t)'); title('Time expanded signal x(0.5t)');

% Plot the original and time-shifted signals
subplot(3,3,7); plot(t, y0); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x(t)'); title('Signal x(t)');
subplot(3,3,8); plot(t, y5); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x5(t)'); title('Delayed signal x(t-2)');
subplot(3,3,9); plot(t, y6); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x6(t)'); title('Advanced signal x(t+2)');
