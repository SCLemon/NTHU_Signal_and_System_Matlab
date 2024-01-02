fo = 50;
cycles = 10;
sigmaf = fo/cycles;
sigmat = 1/(2*pi*sigmaf);
t = linspace(-0.25,0.25,1000);
omega_t = 1./(sigmat.*sqrt(2.*pi)).*(exp(-t.^2./(2.*sigmat.^2))).*exp(2i.*pi.*fo.*t);
plot(t,omega_t,'-*m')