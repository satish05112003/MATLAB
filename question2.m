num1=[1,1];
den1=[1,5];
num2=[1,2];
den2=[1,8];
[num3,den3]=parallel(num1,den1,num2,den2);
f=tf(num3,den3)