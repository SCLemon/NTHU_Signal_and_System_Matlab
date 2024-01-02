% Time points
t = linspace(0,2*pi,500)';
t_approx = 0:0.01:2;

% Create figure 
figure;

% Loop through N values
N_values = [1 5 9 15]; 
for i = 1:4
    
    N = N_values(i);
    
    % Initialize Fourier series
    square_approx = 0;
    
    % Compute Fourier series 
    for n = 1:2:N
        square_approx = square_approx + (4/pi)*(sin(n*pi*t_approx)/n);
    end
    
    % Plot
    subplot(2,2,i);
    plot(t/pi,square(t),'k--','LineWidth',3) 
    hold on
    plot(t_approx,square_approx,'r-') 
    legend('Original','Approximation')
    title(['N = ' num2str(N)]);
    xlim([0 2]);
    ylim([-1.5 1.5]);
    hold off
end