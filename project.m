n=[10,70];
d1=[1,2];
d2=[1,6];
d=conv(d1,d2);
t=tf(n,d);
rlocus(t)