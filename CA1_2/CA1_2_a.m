n = -10:10;

x = 2 * cos(0.04 * pi * n);
y = zeros(size(n));
y(n == -2) = 2;
y(n == 0) = -1;
y(n == 2) = 1;

figure;
stem(n, x, 'b', 'MarkerFaceColor', 'b', 'LineWidth', 1.2);
xlabel('n');
ylabel('Amplitude');
grid on;
title('Stem Plot of x[n] over -10 <= n <= 10');

figure;
stem(n, y, 'r', 'MarkerFaceColor', 'r', 'LineWidth', 1.2);
xlabel('n');
ylabel('Amplitude');
grid on;
title('Stem Plot of y[n] over -10 <= n <= 10');
