clc
clear all
x = [1;1.5;2;2.5];
f = [2.7183;4.4817;7.3891;12.1825];
p = 2.25;
n = length(x);
m = zeros(n,n);
m(:,1) = f(:);
for j = 2:n
    for i = j:n
        m(i,j) = (m(i,j-1)-m(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
for i= 1:n
    prod(i) = 1;
    for j=1:i-1
        prod(i) = prod(i)*(p-x(j));
    end
end
sum = 0;
for i=1:n
    sum = sum+prod(i)*m(i,i);
end
display(sum)
