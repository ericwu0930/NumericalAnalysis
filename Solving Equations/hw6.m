%% hw6 p85 1 a
%%
clear;
clc;
f=@(x)x.^2-2*x.*exp(-x)+exp(-2*x);
subplot(2,1,1);
fprime=@(x) 2*x-(2*exp(-x)-2*x*exp(-x))-2*exp(-2*x);
[i,p]=newton(0,10^-5,20,f,fprime);
title('newton method')
subplot(2,1,2);
fpp=@(x) 2-(-4*exp(-x)+2*x*exp(-x))+4*exp(-2*x);
[i_,p_]=newton_modified(0,10^-5,20,f,fprime,fpp);
title('modified newton method');