num1 = [1 1];
num2 = [1 2];
den1 = [1 3];
den2 = [1 4];
d3 = conv(den1,den2);
n3 = conv(num1,num2);
f = tf(n3,d3)