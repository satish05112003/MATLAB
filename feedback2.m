num1=[1,3];
den1=[1,8];
num2=[0,1];
den2=[0,1];
[num3,den3]=feedback(num1,den1,num2,den2,-1);
f=tf(num3,den3)
