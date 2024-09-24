n=[1000];
d=[0.00001 0.011 1];
t=tf(n,d);
k=logspace(-1,3,1000)
bode(t,k)