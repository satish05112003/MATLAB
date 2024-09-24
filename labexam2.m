n1=[20];
n2=[1 1 0.5];
d1=[1];
d2=[1 1];
d3=[1 10];
n3=conv(n1,n2); %n3
d4=conv(d1,d2);
d5=conv(d4,d3); %d5
nyquist(n3,d5);