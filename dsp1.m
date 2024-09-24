clc
clear;
F1=input('enter the frequency 1:'); %500
F2=input('enter the frequency 2:'); %600
F3=input('enter the frequency 3:'); %1200
T=1./(min(min(F1,F2),F3));
t=0:0.01*T:6*T;
X=cos(2*pi*F1*t)+cos(2*pi*F2*t)+cos(2*pi*F3*t);
Fs=2*max(max(F1,F2),F3);
plot(t,X)
xlabel('Time');
ylabel('Amplitude');