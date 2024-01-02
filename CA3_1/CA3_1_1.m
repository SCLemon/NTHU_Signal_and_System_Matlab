load('signal1.mat');
Fs=1000;

Y = fft(Signal1);
L = length(Signal1);

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;

figure;
plot(f, P1);
title('Single-Sided Amplitude Spectrum of Signal1');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
grid on;
