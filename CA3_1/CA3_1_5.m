Fs = 1000;          
Fpass = 200;        
Fstop = 216;        
Apass = 1;          
Astop = 60;         

filterSpec = fdesign.lowpass('Fp,Fst,Ap,Ast', Fpass, Fstop, Apass, Astop, Fs);

designMethod = 'equiripple'; 
filterDesign = design(filterSpec, designMethod);
fvtool(filterDesign);

load('Signal1.mat');
filteredSignal = filter(filterDesign, Signal1);

figure;
subplot(2,1,1);
plot(Signal1);
title('Original Signal');

subplot(2,1,2);
plot(filteredSignal);
title('Filtered Signal');
