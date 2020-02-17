function v=Lagrange(x,y,u)
%% 拉格朗日插值法
%% parameters
% input:  x and y are vectors of the same length that define the
% interpolating points, u is a vector of points where the function is to be evaluated
% output: y is the result
%%
tic
n=length(x);
v=zeros(size(u));
for k=1:n
    w=ones(size(u));
    for j=[1:k-1 k+1:n]
        w=(u-x(j))./(x(k)-x(j)).*w;
    end
    v=v+w*y(k);
end
disp(['计算用时',num2str(toc)]);
end
