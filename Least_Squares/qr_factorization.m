function [res se]=qr_factorization(x,y,order)
%% parameters:
% input: x,y represent the given points; order means the order of
% parameterized model
% outp|ut: res means the coefficient of the parameterized model
%% code:
x=x(:);
y=y(:);
A=ones(length(x),order+1);
% construct matrix A
for i=2:order+1
    A(:,i)=x.^(i-1);
end
[q r]=qr_customed(A);
m=min(size(A));
d=q'*y;
res=r(1:m,:)\d(1:m);
se=norm(A*res-y)^2;
u=linspace(min(x)-1,max(x)+1,100);
v=zeros(size(u));
for i=1:order+1
    v=v+res(i)*u.^(i-1);
end
plot(x,y,'ro',u,v,'b-');
fprintf("The squared error:\n SE=%d\n",se)
end