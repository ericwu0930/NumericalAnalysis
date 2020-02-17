%% p77 28
%%
f=@(t) exp(1)/3*t*exp(1)^(-t/3)-0.25;
fprime=@(t) exp(1)/3*exp(1)^(-t/3)+exp(1)/3*(-1/3)*t*exp(1)^(-t/3);
newton(4,10^-3,20,f,fprime);