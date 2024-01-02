load('ECG.mat')
num_A = [1/2, 0,0, 1/2];
den_A = 1;
num_B = [36, 0, 0, 0, 0, 0, -72, 0, 0, 0, 0, 0, 36];
den_B = [1, -2, 1];

amplitude_factor_original = 1;
amplitude_factor_output_A = 0.5; 
amplitude_factor_output_B = 0.2; 

output_A = filter(num_A, den_A, ECGdata) * amplitude_factor_output_A;
output_B = filter(num_B, den_B, output_A) * amplitude_factor_output_B;

figure;
plot(ECGdata * amplitude_factor_original, 'LineWidth', 1.5, 'DisplayName', 'Original');
hold on;
plot(output_A, 'LineWidth', 1.5, 'DisplayName', 'Filtered by A');
plot(output_B, 'LineWidth', 1.5, 'DisplayName', 'Final Filtered by B');
hold off;

title('Amplitude Adjusted Signals with Group Delays');
xlabel('Sample Index');
ylabel('Amplitude');
legend('show');
