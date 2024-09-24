t=0:0.001:1;
num=[1];
den=[1 10];
c1=step(num,den,t);
subplot(2,1,1);
plot(t,c1);
xlabel('Time')
ylabel('amplitude')
title('step and impulse response of first order system')
num=[1];
den=[1 10];
c2=impulse(num,den,t);
subplot(2,1,2);
plot(t,c2);
xlabel('Time')
ylabel('amplitude')
title('step and impulse response of first order system')