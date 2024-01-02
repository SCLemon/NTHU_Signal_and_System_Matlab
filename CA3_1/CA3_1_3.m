figure(1);
grid on;

load('Signal1.mat');
sampling_rate = 1000;
y = Signal1(1,:);
time = 0:1/1000:2-1/1000;

filterX100 = (filter(b,a,y));
N = 100;
for i = 1:N
    filterX100 = (filter(b,a, filterX100));
end
subplot(2,1,1);
plot(time,filterX100);
title('filter 100x');
xlabel('time');
ylabel('magnitude');

filterX200 = (filter(b,a,y));
N_1 = 200;
for i = 1:N_1
    filterX200 = (filter(b,a, filterX200));
end
subplot(2,1,2);
plot(time,filterX200);
title('filter 200x');
xlabel('time');
ylabel('magnitude');