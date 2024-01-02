[x,fs] = audioread('../PhoneSound.wav'); 
time=(1:length(x))/fs;
plot(time,x);
xlabel('t');
ylabel('x(t)');
title('PhoneSound.wav');