clc 
clear all
f=input("Enter a polynomial");
a=input("Enter lower limit");
b=input("Enter upper limit");
%c=(a+b)/2;
if(f(a)*f(b)<0)
    error=1;
    n=0;
       while(abs(f(a)-f(b))>0.001)
            c=(a+b)/2;
            n=n+1;
        if(f(a)*f(c)<0)
            b=c;
        else
            a=c;
        end
        %error=abs(c-c1)
        %c1=c;
       end
       fprintf("The root is %f ",c);
       fprintf(" has %f iterations",n);
else
    disp(" does not converge");
end