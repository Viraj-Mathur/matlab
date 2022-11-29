clc
clear all
a=input("Enter Lower limit");
b=input("Enter upper limit");
h=input("Enter step size");
x(1)=input("Enter initial value of x");
y(1)=input("Enter initial value of y");
f=@(x,y) -y+2*cos(x);
n=(b-a)/h;
for i=1:n-1
    x(i+1)=x(i)+h;
end
for i=1:n-1
    y(i+1)=y(i)+h*f(x(i),y(i));
    yold=y(i+1);
    while(1)
        y(i+1)=y(i)+(f(x(i),y(i))+f(x(i+1),y(i+1)))*(h/2);
        if(y(i+1)-yold<eps)
            break;
        else
            yold=y(i+1);
        end
    end
end
y