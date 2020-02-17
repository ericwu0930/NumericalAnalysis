function v=Newton(x,y,u)
%% �����ʽ��ţ�ٲ�ֵ��ʽ
%% parameters
% input:  x and y are vectors of the same length that define the
% interpolating points, u is a vector of points where the function is to be evaluated
% output: y is the result
%%
tic
x=x(:); %��x��Ϊ������
y=y(:); %��y��Ϊ������
n=length(x);
v=zeros(size(u));
v=v+y(1);
map=zeros(n);
map(:,1)=y;
for i=2:n
    tmp=[zeros(i-1,1);map(i-1:end-1,i-1)];
    tmpx=[zeros(i-1,1);x(1:end-i+1,1)];
    map(:,i)=(map(:,i-1)-tmp)./(x-tmpx);
    term=map(i,i)*ones(size(u));
    for j=1:i-1
        term=term.*(u-x(j));
    end
    v=v+term;
end
disp(['������ʱ',num2str(toc)]);
end
