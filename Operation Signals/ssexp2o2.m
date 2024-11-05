clear all;
close all;
clc;

% Set time parameters
tmin = -1; tmax = 5; dt = 0.1;
t = tmin:dt:tmax; % Set a time vector

% Define the signals
x1 = 1;
x2 = 2;
x3 = 3 - t;
xa = x1 .* (t > 0 & t < 1) + x2 .* (t >= 1 & t <= 2) + x1 .* (t > 2 & t < 3);
xb = t .* (t > 0 & t < 1) + x1 .* (t >= 1 & t <= 2) + x3 .* (t > 2 & t < 3);

% Perform addition and multiplication
xadd = xa + xb; % Add the two signals
xmul = xa .* xb; % Multiply the two signals

% Compute min and max for y-axis limits
xmin = min([min(xa), min(xb), min(xadd), min(xmul)]);
xmax = max([max(xa), max(xb), max(xadd), max(xmul)]);

% First figure: Plot signals and their sum
figure(1);
subplot(2,3,1); plot(t, xa); axis([tmin tmax xmin xmax]);
xlabel('t'); ylabel('xa(t)'); title('Signal xa(t)');
subplot(2,3,2); plot(t, xb); axis([tmin tmax xmin xmax]);
xlabel('t'); ylabel('xb(t)'); title('Signal xb(t)');
subplot(2,3,3); plot(t, xadd); axis([tmin tmax xmin xmax]);
xlabel('t'); ylabel('xadd(t)'); title('Sum of xa(t) and xb(t)');

% Second figure: Plot signals and their product
figure(2);
subplot(2,3,1); plot(t, xa); axis([tmin tmax xmin xmax]);
xlabel('t'); ylabel('xa(t)'); title('Signal xa(t)');
subplot(2,3,2); plot(t, xb); axis([tmin tmax xmin xmax]);
xlabel('t'); ylabel('xb(t)'); title('Signal xb(t)');
subplot(2,3,3); plot(t, xmul); axis([tmin tmax xmin xmax]);
xlabel('t'); ylabel('xmul(t)'); title('Product of xa(t) and xb(t)');
