f=@ (x) x^2-17;
x0=input('Enter x0');
x1= input ('Enter x1');
n=input('Enter iterations');
tol=input('Enter tolerance');
i=1;
while (i<=n)
x2=x1-((x1-x0) *f (x1) ) / (f(x1)-f(x0) ) ;
if (abs (x1-x0) <tol)
break;
end
i=i+1;
x0=x1;
x1=x2;
end
display (x2);
