%% hw1 p114 1+3
%% one degree for a
f1=@(x)cos(x);
x=[0 0.6];
y=f1(x);
symx=sym('x');
v=Lagrange(x,y,symx);
x_=linspace(0,0.6,100);
plot(x_,f1(x_),'r-');
hold on
fplot(v,[0,0.6]);
fprintf('Absolute error is %d\n',abs(f1(0.45)-double(subs(v,0.45))));
%% two degree for a
x=[0,0.6,0.9];
y=f1(x);
symx=sym('x');
v=Lagrange(x,y,symx);
hold on
fplot(v,[0,0.6],'g');
legend('Actual function',' 1 degree Interpolation',...
    '2 degree Interpolation');
fprintf('Absolute error is %d\n',abs(f1(0.45)-double(subs(v,0.45))));