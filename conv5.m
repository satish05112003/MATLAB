n1=[0 100];
n2=[1 3];
n3=[1 4];
d1=[1 0];
d2=[1 0];
d3=[1 1];
d4=[1 2];
c1=conv(n1,n2);
C1=conv(c1,n3);
c2=conv(d1,d2);
c3=conv(d3,d4);
C2=conv(c2,c3);
N1=[200 0 0];
D1=[1 0];
D2=[1 3];
D3=[1 4];
c4=conv(D1,D2);
C3=conv(c4,D3);
nn1=[1 0];
nn2=[1 0];
nn3=[1 2];
nn4=[1 3];
c5=conv(nn1,nn2);
c6=conv(nn3,nn4);
C4=conv(c5,c6);
dd1=[1 0];
dd2=[1 0];
dd3=[1 0];
dd4=[1 4];
dd5=[1 5];
c7=conv(dd1,dd2);
c8=conv(dd3,dd4);
c9=conv(c7,c8);
C5=conv(c9,dd5);
[num1 den1]=feedback(C1,C2,N1,C3);
[num2 den2]=feedback(num1,den1,C4,C5);
f=tf(num2,den2)