load('ECG.mat');

B = [1/2, 0, 0, 1/2];
A = 1;
filtered_signal = filter(B, A, ECGdata);

figure;
subplot(2,1,1);
plot(ECGdata);
title('Original ECG Signal');

subplot(2,1,2);
plot(filtered_signal);
title('Filtered ECG Signal');

legend('Original', 'Filtered');
