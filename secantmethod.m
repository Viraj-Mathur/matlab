clc
clear all
x0=input("Enter 1st initial guess");
x1=input("Enter 2nd initial guess");
t=input("Enter tolerance");
f=@(x) x^2-17;
error=1;
while(error>t)
    x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0)); %please write your formula correctly
    error=abs(x2-x1);
    x0=x1;
    x1=x2;
end
fprintf("root is = %f ",x1);