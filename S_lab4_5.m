t=0:0.001:15;
z1=input('enter the value of z: ');
z2=input('enter the value of z: ');
z3=input('enter the value of z: ');
z4=input('enter the value of z: ');
w=input('enter the value of w: ');
num=[w*w];
den1=[1,2*z1*w,w*w];
den2=[1,2*z2*w,w*w];
den3=[1,2*z3*w,w*w];
den4=[1,2*z4*w,w*w];
c1=step(num,den1,t);
c2=step(num,den2,t);
c3=step(num,den3,t);
c4=step(num,den4,t);
subplot(2,2,1);
plot(t,c1);
xlabel("time");
ylabel("amplitude");
subplot(2,2,2);
plot(t,c2);
xlabel("time");
ylabel("amplitude");
subplot(2,2,3);

plot(t,c3);
xlabel("time");
ylabel("amplitude");
subplot(2,2,4);

plot(t,c4);
xlabel("time");
ylabel("amplitude");