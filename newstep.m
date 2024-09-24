t=0:0.001:15;
r=input('resistace');
c=input('capacitance');
n=[1];
d=[r*c 1];
c=step(n,d,t);
plot(c,t)