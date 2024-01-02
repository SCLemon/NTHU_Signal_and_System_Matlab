[x, Fs]= audioread('../PhoneSound.wav');
X=zeros(10,4000);
for i = 1:10
    X(i,:) = x(((i-1)*N+1):(i*N));
end
Fs=8000;
for i=1:1:10
    t=1:1:4000;
    nfft = 2^nextpow2(N);
    Pxx = abs(fft(X(i,:),nfft)).^2/N/Fs;
    Hpsd = dspdata.psd(Pxx(1:length(Pxx)/2),'Fs',Fs);  
    subplot(10,1,i);
    plot(Hpsd);
    xlabel('kHz');
    ylabel('dB/Hz');
    title('psd');
end