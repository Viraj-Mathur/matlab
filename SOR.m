clc
clear all
%not working redo it
a=[4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];
b=[-2;-1;0;1]
w=input('Enter weight');
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
    x0(i)=(1-w)*x0(i)+(w)*(b(i)-sum)*(1/a(i,i));
end
error=abs(xold-x0);
%k=k+1;
end
x0