t=0:0.001:15;
z=input('enter the value of z: ');
w=input('enter the value of w: ');
num1=[w*w];
den1=[1,2*z*w,0];
[num2,den2]=cloop(num1,den1);
c1=step(num2,den2,t);
plot(t,c1);