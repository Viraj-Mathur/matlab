clc
clear all
f=[151326;179323;203302;226542;249633;281422];
x=[1950;1960;1970;1980;1990;2000]

sum=0

for i=1:6
    l(i)=1;
    for j=1:6
        if j~=i
            l(i)= (1995-x(j))/(x(i)-x(j))*l(i);
        end
    end
end

for i=1:6
    sum=sum+l(i)*f(i);
end
sum
