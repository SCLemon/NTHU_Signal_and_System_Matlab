load('ECG.mat');
num_A = [1/2, 0, 0, 1/2];
den_A = 1;


num_B = [36, 0, 0, 0, 0, 0, -72, 0, 0, 0, 0, 0, 36];
den_B = [1, -2, 1];


output_A = filter(num_A, den_A, ECGdata);
output_B = filter(num_B, den_B, output_A);


figure;
subplot(3,1,1);
plot(ECGdata);
title('Original ECG Signal');

subplot(3,1,2);
plot(output_A);
title('Filtered by A');

subplot(3,1,3);
plot(output_B);
title('Final Filtered by B');

legend('Original', 'Filtered by A', 'Final Filtered by B');
