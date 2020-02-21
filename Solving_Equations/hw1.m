%% bisection hw1
%% p54 3
clear
clc
syms x;
f=x^3-7*x^2+14*x-6;
ezplot(f,[0,4]);
grid on;
f=@(x)x^3-7*x^2+14*x-6;
i=zeros(1,3);
p=zeros(1,3);
[i(1),p(1)]=bisection(0,1,0.01,20,f);
[i(2),p(2)]=bisection(1,3.2,0.01,20,f);
[i(3),p(3)]=bisection(3.2,4,0.01,20,f);
disp(sprintf('Result is %d\n',p));