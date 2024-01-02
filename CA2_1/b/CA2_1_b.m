nx = 0:200;
x = cos(0.1*pi*nx);
nh =0:3;
h=power(-2,nh);
y=ai_conv(x,h);
stem(y,'ro-');