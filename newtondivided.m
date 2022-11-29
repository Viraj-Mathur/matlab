clc
clear all
n=input("Enter the total number of points");
b=input("Enter the point of interpolation");
for i=1:n
    x(i)=input("Enter the value of x");
    f(i)=input("Enter the value of f(x)");
end
for j=1:n
    d(1,j)=f(j); 
end
for i=2:n
    for j=1:n-i+1
        d(i,j)=(d(i-1,j+1)-d(i-1,j))/(x(i-1+j)-x(j));
    end
end
sum=d(1,1);
product=1;
for i=2:n
    product=product*(b-x(i-1));
    sum=sum+(product)*d(i,1);
end
fprintf("The value of f(%f) is = %f",b,sum);