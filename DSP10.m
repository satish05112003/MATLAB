clc;
clear;
M = input('Enter the value of M (enter large value) :');
Hm = zeros(1,M);
for i=1:M
    Hm(i)=(0.54-(0.46*cos((2*pi*(i-1))/(M))));
end
hdL =zeros(1,M);
wc =0.75*pi;
a =(M-1)/2;
for i=1:M
    hdL(i)=(wc/pi)*sinc(wc*(i-a)/pi);
end
h =zeros(1,M);
for i =1:M
    h(i) =Hm(i)*hdL(i);
end
l =linspace(0,pi,200);
X1 =freqz(h,1,l);
plot(l,20*log(abs(X1)));
clear;
M =input('Enter the value of M (enter large value) :');
Hm = zeros(1, M);
2
for i = 1:M
    Hm(i) = (0.54 - (0.46 * cos((2 * pi * (i - 1)) / (M))));
end

hdL = zeros(1, M);
hdH = zeros(1, M);
wc = 0.75 * pi;
a = (M - 1) / 2;

for i = 1:M
    hdL(i) = (wc / pi) * sinc(wc * (i - a) / pi);
end

for i = 1:M
    hdH(i) = ((-1)^i) * (wc / pi) * sinc(wc * (i - a) / pi);
end

h1 = zeros(1, M);
for i = 1:M
    h1(i) = Hm(i) * hdL(i);
end

h2 = zeros(1, M);
for i = 1:M
    h2(i) = Hm(i) * hdH(i);
end
l = linspace(0, pi, 200);
X1 = freqz(h1, 1, l);
subplot(1, 2, 1);
plot(l, 20 * log(abs(X1)));

X2 = freqz(h2, 1, l);
subplot(1, 2, 2);
plot(l,20*log(abs(X2)));
