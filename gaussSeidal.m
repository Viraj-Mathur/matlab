clc
clear all
%not working redo it
a=[4.63 -1.21 3.22;-3.07 5.48 2.11;1.26 3.11 4.57];
b=[2.22;-3.17;5.11]
t=input("Enter tolerance");
n=size(a,1);
for i=1:n
    x0(i)=0;
end
k=1;
error=Inf;
while (error>0.001)
    xold=x0;
for i=1:n
    sum=0;
    for j=1:i-1
        sum=sum+a(i,j)*x0(j);
    end
    for j=i+1:n
        sum=sum+a(i,j)*xold(j);
    end
    x0(i)=(1/a(i,i))*(b(i)-sum);
end
error=abs(xold-x);
%k=k+1;
end
x0