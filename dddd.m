t=0:0.001:15;
R=input('resistance value');
C=input('capacitance input');
num=[0 10];
den=[R * C 1];
c=step(num,den,t);
plot(t,c)
xlabel('amplitude');
ylabel('time');
title('unit step response of a system');
