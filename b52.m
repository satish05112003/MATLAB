n=[1];
d=[1 5 2 0];
t=tf(n,d);
rlocus(t)
sgrid(t)


n=[1 2 6];
d=[1 2 5 3 8];
[z,p,k]=tf2zp(n,d);
pzmap(n,d)