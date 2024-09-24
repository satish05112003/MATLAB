%%2(b)=5

n1=[100];
n2=[1 3];
n3=[1 4];
d1=[1 0 0];
d2=[1 1];
d3=[1 2];

N1=[200 0 0]; %%N1
D1=[1 0];
D2=[1 3];
D3=[1 4];

nn1=[1 0 0];
nn2=[1 2];
nn3=[1 3];
dd1=[1 0 0 0];
dd2=[1 4];
dd3=[1 5];

n4=conv(n1,n2);
n5=conv(n4,n3);  %%n5

d4=conv(d1,d2);
d5=conv(d4,d3);  %%d5

D4=conv(D1,D2);
D5=conv(D4,D3);  %%D5

s0=conv(nn1,nn2);
s1=conv(s0,nn3); %%s1

a0=conv(dd1,dd2);
a1=conv(a0,dd3);  %%a1

[N6 D6]=feedback(n5,d5,N1,D5)
[x1 z1]=feedback(N6,D6,s1,a1)
f=tf(x1,z1)