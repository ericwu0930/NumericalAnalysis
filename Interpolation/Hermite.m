function v=Hermite(x,y,dy,u)
%% 分段埃尔米特三次插值法
%% parameters
% input:x and y are vectors of the same length that define the
% interpolating points, u is a vector of points where the function is to be
% evaluated,dy is differential of y
% output:y is the result
%% code
tic;
n=length(x);
segment=cell(n-1,1);
v=[];
i=2;
start=1;
%% 将u分割
for j=1:length(u)
    if u(j)>x(i)
        segment{i-1}=u(start:j-1);
        i=i+1;
        start=j;
    end
    if i>n
        segment{n-1}=[segment{n-1},u(start:end)];
        break;
    end
end
%% 为每一段构造Hermite函数
for i=2:n
    t1=(segment{i-1}-x(i-1))./(x(i)-x(i-1));
    t2=(segment{i-1}-x(i))./(x(i-1)-x(i));
    tmp=(1+2*t1).*(t2.^2)*y(i-1)+(1+2*t2).*(t1.^2)*y(i)+(segment{i-1}-x(i-1)).*(t2.^2)*dy(i-1)+...
        (segment{i-1}-x(i)).*(t1.^2)*dy(i);
    v=[v,tmp];
end
disp(['计算用时',num2str(toc)]);
end
