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
circular_conv_matrix = (circular_matrix .* x3');
display(circular_conv_matrix)