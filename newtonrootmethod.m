clc
clear all
f=@(x)x^2-17;
t=input("Enter the tolerance value");
x0=input("Enter the initial approx");
d=@(x)2*x;
error=1;
while(error>t)
xn=x0-(f(x0)/d(x0));
error=abs(xn-x0);
x0=xn;
end
fprintf("root is %f ",x0);