%% 三种插值效果对比
clear;
clc;
x=1:6;
y=[16,18,21,17,15,12];
dy=[1,0,0,0,0,1];
u=linspace(0.75,6.25,100);
v_Her=Hermite(x,y,dy,u);
plot(x,y,'s',u,v_Her,'k-');
hold on
v=Lagrange(x,y,u);
plot(u,v,'b--');
v_S=spline(x,y,u);
plot(u,v_S,'r-');
legend('原函数','拉格朗日插值','埃尔米特插值','三次样条曲线插值');