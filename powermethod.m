clc
clear all
a=[4 1 0;1 20 1;0 1 4];
x=[1;1;1];
e=1;
k=0;
while(e>0.001)
    y=a*x;
    k1=max(y);
    x=(1/k1)*y;
    e=abs(k1-k);
    k=k1;
end
k
x