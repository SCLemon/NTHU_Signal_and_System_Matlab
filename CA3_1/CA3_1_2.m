figure(1);
grid on;

% static
load('Signal1.mat');
sampling_rate = 1000;
y = Signal1(1,:);
time = 0:1/1000:2-1/1000;
a = [1.0000 -0.3200 0.5095];
b = [0.5095 -0.3200 1.0000];

% fr: frequency response   ar: angular response
[fr,ar] = freqz(b,a,'whole'); 

% Frequency response
subplot(2,1,1);
x_values = ar / pi;
y_values = unwrap(angle(fr)) * 180 / pi;
plot(x_values, y_values);

ax = gca; % current axes
ax.YLim = [-50 50];
ax.XTick = 0:.5:2;
title('Frequecy Response of Signal1');
xlabel('Frequency')
ylabel('Frequency Response (dB)');

% Phase response
subplot(2,1,2);
x_values = ar / pi;
y_values = unwrap(angle(fr)) * 180 / pi;
plot(x_values, y_values);

ax = gca; % current axes
ax.YLim = [-500 50];
ax.XTick = 0:.5:2;
title('Phase Response of Signal1');
xlabel('Frequency')
ylabel('Phase Response (degree)');




