%% bisection hw2
%% p54 19
f=@(h)10*(0.5*pi*1^2-1^2*asin(h)-h*(1-h^2)^(1/2))-12.4;
[i,p]=bisection(0,1,0.01,20,f);
disp(['Result is ',num2str(p)]);