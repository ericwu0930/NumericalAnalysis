function v=Hermite_advanced(x,y,u,fprime)
%% 多次Hermite插值
%% %% parameters
% input:x and y are vectors of the same length that define the
% interpolating points, u is a vector of points where the function is to be
% evaluated,fprime is differential of y
% output:y is the result
%% code
tic
x=x(:);
y=y(:);
u=u(:);
n=length(x);
z=zeros(2*n,1);
map=zeros(2*n,1);
v=y(1)*ones(size(u));
for i=1:n
    z(2*i-1)=x(i);
    z(2*i)=x(i);
end
% 差分表的第一列
for i=1:n
    map(2*i-1)=y(i);
    map(2*i)=y(i);
end
% 差分表的第二列
for i=2*n:-1:2
    if mod(i,2)==0
        map(i)=fprime(i/2);
    else
        map(i)=(map(i)-map(i-1))/(z(i)-z(i-1));
    end
end
v=v+map(2)*(u-z(1));
for i=3:2*n
    tmp=(map-circshift(map,1))./(z-circshift(z,i-1));
    coe=tmp(i);
    map=tmp;
    term=ones(size(u));
    for j=1:i-1
        term=term.*(u-z(j));
    end
    v=v+coe*term;
end
disp(['Time Consuming: ',num2str(toc)]);
end