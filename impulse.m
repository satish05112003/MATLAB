
t=0:0.001:1;
n=[5];
d=[1 10];
f=tf(n,d);
[c t]=impulse(f,t);
plot(t,c);


