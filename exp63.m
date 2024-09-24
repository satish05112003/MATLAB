n=[100];
d=[0.1 1 0];
t=tf(n,d)
k=logspace(-1,3,1000);
bode(t,k)