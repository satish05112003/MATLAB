t=0:0.001:15;
n1=[10];
d1=[10 1];
n2=[1];
d2=[15 1];
c1=step(n1,d1,t);
c2=step(n2,d2,t);
plot(t,c1)
hold on;
plot(t,c2);
xlabel('time')
ylabel('amplitude')
title('unit step response of first order system')