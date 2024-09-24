clc;
clear;
M=input('enter the value of M=');
HN=zeros(1,M);
for i = 1:M
    HN(i) = 0.54 - 0.46*cos((2*pi*(i-1))/(M));
end
HD=zeros(1,M);
wc=pi/4;
a=(M-1)/2;
for i=1:M
    HD(i)=(wc/pi)*(sinc(wc*(i-a)/pi));
end
H=zeros(1,M)
for i=1:M
    H(i)=HD(i)*HN(i);
end
L=linspace(0,pi,200);
X1=freqz(H,L,L);
plot(L, 20*log(abs(X1)));