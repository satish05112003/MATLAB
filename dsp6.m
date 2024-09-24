x1 = input('enter x1(n):');
x2 = input('enter x2(n):');
n1 = length(x1);
n2 = length(x2);
N = max(n1,n2);
x3 = x1;
x4 = x2;
if(n1<N)
    x3 = [x1 zeros(1,(N-n1))];
end
if(n2<N)
    x4 = [x2 zeros(1,(N-n2))];
end
circular_matrix = zeros(N,N);

for col = 1:N
    for row = 1:N
        if(row>=col)
            circular_matrix(row,col) = x4(1+row-col);
        else
            circular_matrix(row,col) = x4(N+1+row-col);
        end
    end
end
disp(circular_matrix)
circular_conv_matrix = (circular_matrix * x3');
display(circular_conv_matrix)

clc;
clear;
N = input('Enter the value of N: ');

f1 = linspace(-pi, pi, N * 10);
n = 0:1:N-1;
wn = zeros(1, N);
h = zeros(1, N);
hn = zeros(1, N);
b = zeros(1, N);

for i = 1:N % Change the index to start from 1
    h(i) = 1;
end

for i = 1:N % Change the index to start from 1
    wn(i) = 0.5 * (1 - cos((2 * pi * (i-1)) / (N - 1)));
end

for i = 1:N % Change the index to start from 1
    hn(i) = (0.54 - 0.46 * cos((2 * pi * (i-1)) / (N - 1)));
end

for i = 1:N % Change the index to start from 1
    b(i) = 0.42 - 0.5 * cos((2 * pi * (i-1)) / (N - 1)) + 0.08 * cos((4 * pi * (i-1)) / (N - 1));
end

subplot(2, 2, 1);
stem(n, h);
title('Rectangular Window');

subplot(2, 2, 2);
stem(n, wn);
title('Hanning Window');

subplot(2, 2, 3);
stem(n, hn);
title('Hamming Window');

subplot(2, 2, 4);
stem(n, b);
title('Blackman Window');






















