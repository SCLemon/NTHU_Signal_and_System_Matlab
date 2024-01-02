% Load ECG data
load('ECG.mat');
t = (0:length(ECGdata)-1)/1000;  % Assuming a sampling frequency of 1000 Hz

% Coefficients for filter A
num_A = [1/2, 0, 0, 1/2];
den_A = 1;
num_B = [36, 0, 0, 0, 0, 0, -72, 0, 0, 0, 0, 0, 36];
den_B = [1, -2, 1];

output_A = filter(num_A, den_A, ECGdata);
output_B = filter(num_B, den_B, ECGdata);

amplitude_factor_original = 1;
amplitude_factor_output_A = 0.5; 
amplitude_factor_output_B = 0.2;

adjusted_original = amplitude_factor_original * ECGdata;
adjusted_output_A = amplitude_factor_output_A * output_A;
adjusted_output_B = amplitude_factor_output_B * output_B;

figure;
plot(t, adjusted_original, 'LineWidth', 1.5, 'DisplayName', 'Original');
hold on;
plot(t, adjusted_output_A, 'LineWidth', 1.5, 'DisplayName', 'Output of Filter A');
plot(t, adjusted_output_B, 'LineWidth', 1.5, 'DisplayName', 'Output of Filter B');
xlabel('Time (s)');
ylabel('Amplitude');
title('Adjusted Signals');
legend('show');
grid on;

% Display frequency response and group delay using fvtool
fvtool(num_A, den_A, num_B, den_B, 'Fs', 1000, 'FrequencyVector', linspace(0, 500, 1000));
% Obtain and display group delays
groupDelay_A = grpdelay(num_A, den_A, linspace(0, 500, 1000), 1000);
groupDelay_B = grpdelay(num_B, den_B, linspace(0, 500, 1000), 1000);

disp('Group Delay for Filter A:');
disp(groupDelay_A);
disp('Group Delay for Filter B:');
disp(groupDelay_B);
