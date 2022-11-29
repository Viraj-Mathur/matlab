A=[1/3 1/2 -1/4 ;1/5 2/3 3/8;2/3 -2/3 5/8]
% l=[1 0 0;0 1 0;0 0 1]

n=size(A,1)%no of rows
m=size(A,2) %no of columns
l=eye(m)
for j=1:m-1%for rows
    for i=j+1:n       %for columns
        l(i,j)=A(i,j)/A(j,j);
        A(i,:)=A(i,:)-(l(i,j)*A(j,:));
    end
end
A
l
