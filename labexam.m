t=0:0.01:15;
n=[10];
d=[1 2 5];
n1=[1];
d1=[5];
[n2 d2]=feedback(n,d,n1,d1);
c=step(n2,d2,t);
plot(t,c);
