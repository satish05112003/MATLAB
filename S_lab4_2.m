t=0:0.001:1;
num1=[1];
den1=[1,10,0,0];
num2=[1];
den2=[1,10,0]
c1=step(num1,den1,t);
c2=step(num2,den2,t);
subplot(2,1,1);
plot(t,c1);
subplot(2,1,2);
plot(t,c2);

