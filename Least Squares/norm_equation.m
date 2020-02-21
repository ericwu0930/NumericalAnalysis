function [res,se]=norm_equation(x,y,order)
%% parameters:
% input: x,y represent the given points; order means the order of
% parameterized model
% output: res means the coefficient of the parameterized model
%% code:
x=x(:);
y=y(:);
A=ones(length(x),order+1);
% construct matrix A
for i=2:order+1
    A(:,i)=x.^(i-1);
end
res=(A'*A)\(A'*y);
se=norm(A*res-y)^2;
u=linspace(min(x)-1,max(x)+1,100);
v=zeros(size(u));
for i=1:order+1
    v=v+res(i)*u.^(i-1);
end
plot(x,y,'ro',u,v,'b-');
fprintf("The squared error:\n SE=%d\n",se)
end