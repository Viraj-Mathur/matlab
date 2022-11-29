clc
clear all
f=input("Enter expression");
x0=input("Enter inital approx");
N=input("Maximum number of iterations");
for i=1:N
    x1=f(x0);
    if(abs(x1-x0))<0.01
        x1
        break;
    else
    x0=x1;
    i=i+1;
    end
end