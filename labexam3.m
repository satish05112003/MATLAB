n1=[1 3];
d1=[1 5];
n2=[1];
d2=[500 0 0];  %right side part
 
N1=[10];
D1=[1 2];
N2=[1 1];
D2=[1 6];  %left side part


[a b]=feedback(n1,d1,n2,d2);
[N3 D3]=parallel(N1,D1,N2,D2);

[s p]=series(a,b,N3,D3);
f=tf(s,p)