%% hw3 p142 1.d+3.d
clear;
clc;
x=[0.1 0.2 0.3 0.4];
y=[-0.62049958 -0.28398668 0.00660095 0.24842440];
fprime=[3.58502082 3.14033271 2.66668043 2.16529366];
symx=sym('x');
f=@(x) x.*cos(x)-2*x.^2+3*x-1;
v=Hermite_advanced(x,y,symx,fprime);
fplot(v,[0.1,0.4],'g--');
hold on
u=linspace(0.1,0.4,20);
plot(u,f(u),'r-')
legend('Interpolation result','Primitive');
fprintf('Absolute error is %d',abs(f(0.25)-double(subs(v,0.25))))