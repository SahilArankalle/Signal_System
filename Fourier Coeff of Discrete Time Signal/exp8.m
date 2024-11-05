clear all;
N = 3;
i = sqrt(-1);
x0 = 1; x1 = 2; x2 = -1;
Ck = [];

for k = 0:11
    C = (1/N) * (x0 + (x1 * exp(-i*2*pi*k/N)) + (x2 * exp(-i*4*pi*k/N)));
    Ck = [Ck, C];
end

k = 0:11;
Ck % Print the Fourier coefficients Ck
Mag_of_Ck = abs(Ck) % Evaluate and print the magnitude of Fourier coefficients
Pha_of_Ck = angle(Ck) % Evaluate and print the phase of Fourier coefficients

subplot(2,1,1), stem(k, Mag_of_Ck);
xlabel('k'), ylabel('Magnitude of Ck');
title('Magnitude Spectrum');
subplot(2,1,2), stem(k, Pha_of_Ck);
xlabel('k'), ylabel('Phase of Ck in rad.');
title('Phase Spectrum');