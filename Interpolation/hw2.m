%% hw2 p116 19
%%
x=[0 6 10 13 17 20 28];
y1=[6.67 17.33 42.67 37.33 30.10 29.31 28.74];
y2=[6.67 16.11 18.89 15.00 10.56 9.44 8.89];
u=linspace(0,28,100);
v1=Lagrange(x,y1,u);
v2=Lagrange(x,y2,u);
plot(u,v1,'r--',u,v2,'go-');
legend('young oak leaves','old oak leaves');