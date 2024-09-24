x1 = input('Enter x1 array value: ');
x2 = input('Enter x2 array value: ');
x3 = circ_convo(x1,x2);
disp("Circular Convolution Result: ")
disp(x3);

function y = circ_convo(a,b)
n1 = length(a);
n2 = length(b);
l = max(n1,n2);
xn1 = [a,zeros(1,l-n1)];
xn2 = [b,zeros(1,l-n2)];
circ_mat = zeros(l,l);
xn1_t = transpose(xn1);
xn2_t = transpose(xn2);

for i = 1:l
    circ_mat(i,1) = xn1_t(i,1);
end
for j = 2:l
    for i = 1:l
        if i == 1
            circ_mat(i,j) = circ_mat(l,j-1);
        else
            circ_mat(i,j) = circ_mat(i-1,j-1);
        end
    end
end
y = circ_mat * xn2_t;
end