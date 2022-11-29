clc 
clear all
%a=input("Enter coefficient matrix");
%b=input("Enter vector matrix");
a=[10,8,-3,1;2,10,1,-4;3,-4,10,1;2,2,-3,10];
b=[16;9;10;11];
n=length(b);
aug=[a b]
for j=1:n-1
    for i=j+1:n
        m=aug(i,j)/aug(j,j);
        aug(i,:)=aug(i,:)-m*aug(j,:);
    end
end
aug
x(n)= aug(n,n+1)/aug(n,n)
for k=n-1:-1:1
    s=0;
    for i=k+1:n
    s= s+aug(k,i)*x(i);
    end
    x(k)=(aug(k,n+1)-s)/aug(k,k);
end
x