clc
clear all
n=input("Enter total number of points");
p=input("Enter point of interpolation");
for i=1:n
    x(i)=input("Enter value of x(i)");
    f(i)=input("Enter value of f(i)");
end
for i=1:n
    l(i)=1;
    for j=1:n
        if(i~=j)
            l(i)=l(i)*(p-x(j))/(x(i)-x(j));
        end
    end
end
sum=0;
for i=1:n
    sum=sum+f(i)*l(i);
end
fprintf("Value of f(%f) is = %f",p,sum);