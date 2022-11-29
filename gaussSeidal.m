clc
clear all
a=[4.63 -1.21 3.22;-3.07 5.48 2.11;1.26 3.11 4.57]
b=[2.22; -3.17; 5.11]
tol=0.001;
x0=[0;0;0];
x00=[0;0;0];
n=3;
k=1;
% no of max iteration -25
while(k<=500)
     for i=1:n
        sum1=0;
        sum2=0;
        for j=1:(i-1)
        sum1=sum1+a(i,j)*x00(j)   %for new values
        end
        for j=(i+1):n
        sum2=sum2+a(i,j)*x0(j)      %for old values
        end 
        x00(i)=(b(i)-sum1-sum2)/a(i,i)
     end 
    
        if norm(x0-x00)>tol;
            x0=x00;
             k=k+1;
        else 
            break;
        end
end
    x00
