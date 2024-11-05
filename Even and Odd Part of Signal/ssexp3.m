clear all;
close all;
clc;

% Set time parameters
tmin = -3; tmax = 3; dt = 0.1;
t = tmin:dt:tmax; % Set a time vector

% Define the signal and its time-folded version
x1 = exp(2 * t);   % Generate the given signal x(t) = exp(2*t)
x2 = exp(-2 * t);  % Generate the time-folded signal x(-t)

% Check if the signal is even, odd, or neither
if all(x2 == x1)
    disp('The given signal is an even signal');
elseif all(x2 == -x1)
    disp('The given signal is an odd signal');
else
    disp('The given signal is neither even nor odd');
end

% Compute even and odd parts of the signal
xe = (x1 + x2) / 2; % Even part of the signal
xo = (x1 - x2) / 2; % Odd part of the signal

% Determine y-axis limits for plotting
ymin = min([min(x1), min(x2), min(xe), min(xo)]);
ymax = max([max(x1), max(x2), max(xe), max(xo)]);

% Plot the original, time-folded, even, and odd parts of the signal
subplot(2,2,1); plot(t, x1); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x1(t)'); title('Signal x(t) = e^{2t}');

subplot(2,2,2); plot(t, x2); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('x2(t)'); title('Signal x(-t) = e^{-2t}');

subplot(2,2,3); plot(t, xe); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('xe(t)'); title('Even part of x(t)');

subplot(2,2,4); plot(t, xo); axis([tmin tmax ymin ymax]);
xlabel('t'); ylabel('xo(t)'); title('Odd part of x(t)');
