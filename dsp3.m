x = [1 0 0 1];
N=('ENTER N VALUE');
L = length(x);
M= zeros(L,L);
for k=0:N-1
    for n=0:N-1
        M(k+1,n+1) = exp(-1*i*2*pi*k*n/L);
    end
end
X = M*x';
W = 2*pi*(0:N-1)/N;
subplot(2,1,1);
plot(W,abs(X))
stem(W,abs(X))
legend('22UEC039')
hold on;
subplot(2,1,2);
plot(W,angle(X))
stem(W,angle(X))
hold on;
legend('22UEC039')