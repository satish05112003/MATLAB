t=0:0.001:15;
num=[10];
den=[10 1];
c1=step(num,den,t);
num1=[1];
den2=[15 1];
c2=step(num1,den2,t);
plot(t,c1);
hold on;
plot(t,c2);
xlabel('Time')
ylabel('amplitude')
title('Unit step response of first order system')


