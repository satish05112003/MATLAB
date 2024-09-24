clc
clear;
x=[1,0,0,1];
N=input('Enter the value of N:'); %8
L=length(x);
if(N<L)
   disp('N should be >= L') 
end
x=[x zeros(1,(N-L))]
M=zeros(N,N);
for k=0:N-1
    for n=0:N-1
        M(k+1,n+1)=exp(-1j*2*pi*k*n/N);
    end
end
X=M*x';
disp(X);
w=0:N-1;
subplot(2,1,1);
stem(w,abs(X));
title('MAGNITUDE SPECTRUM')
xlabel('FREQUENCY')
ylabel('MAGNITUDE') 
subplot(2,1,2);
stem(w,angle(X))
title('PHASE SPECTRUM')
xlabel('FREQUENCY')
ylabel('PHASE')