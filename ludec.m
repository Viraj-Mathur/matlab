clc
clear all
a=[10 8 -3 1;2 10 1 -4;3 -4 10 1;2 2 -3 10]
b=[16;9;10;11]
n=length(b);
l=eye(n); %consider it whole an identity matrix
for j=1:n-1
    for i=j+1:n
        m=a(i,j)/a(j,j);
        l(i,j)=m;
        a(i,:)=a(i,:)-m*a(j,:);
    end
end
l
a
y(1)=b(1);
for i=2:n
    sum=0;
    for j=1:i-1
        sum=sum+l(i,j)*y(j);
    end
    y(i)=(b(i)-sum);
end
x(n)=y(n)/a(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+a(i,j)*x(j);
    end
    x(i)=(y(i)-sum)/a(i,i);
end
x