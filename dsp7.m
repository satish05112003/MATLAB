clc;
clear;
N=input('enter the value of N=');
f1=linspace(-pi,pi,N*10);
n=0:1:N-1;
wn=zeros(1,N);
h=zeros(1,N);
hn=zeros(1,N);
b=zeros(1,N);
for i=1:N;
    h(i)=1;
end
for i=1:N;
    wn(i)=0.5*(1-cos((2*pi*(i-1))/(N-1)));
end
for i=1:N;
    hn(i)=(0.54-0.46*cos((2*pi*(i-1))/(N-1)));
end
for i=1:N;
    b(i)=0.42-0.5*cos((2*pi*(i-1))/(N-1))+0.08*cos((4*pi*(i-1))/(N-1));
end
subplot(6,2,1);
stem(h);
title('rectangular window');
subplot(6,2,2);
stem(wn);
title('hanning window');
subplot(6,2,3);
stem(hn);
title('hamming window');
subplot(6,2,4);
stem(b);
title('balckman window');

x1 = fft(wn,N*10);
subplot(6,2,5);
plot(f1,20*log(abs(x1)));
title('Magnitude of Rectangular Window');
subplot(6,2,6);
plot(angle(x1));
title('Phase of Rectangular Window');

x2 = fft(h,N*10);
subplot(6,2,7);
plot(f1,20*log(abs(x2)));
title('Magnitude of hanning window');
subplot(6,2,8);
plot(angle(x2));
title('Phase of hanning Window');

x3 = fft(hn,N*10);
subplot(6,2,9);
plot(f1,20*log(abs(x3)));
title('Magnitude of hamming Window');
subplot(6,2,10);
plot(angle(x3));
title('Phase of hamming Window');

x4 = fft(b,N*10);
subplot(6,2,11);
plot(f1,20*log(abs(x4)));
title('Magnitude of blackman window');
subplot(6,2,12);
plot(angle(x4));
title('Phase of blackman window');


