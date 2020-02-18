 %% p76 16
%%
f=@(x) 1/2+1/4*x^2-x*sin(x)-1/2*cos(2*x);
fprime=@(x)1/2*x-sin(x)-x*cos(x)+sin(2*x);
newton(pi/2,10^-5,20,f,fprime);
newton(5*pi,10^-5,20,f,fprime);
newton(10*pi,10^-5,20,f,fprime);
syms x;
f=1/2+1/4*x^2-x*sin(x)-1/2*cos(2*x);
ezplot(f,[0,10*pi]);
grid on;