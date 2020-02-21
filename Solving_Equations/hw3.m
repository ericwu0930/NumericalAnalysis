%% fixed-point theorem hw1
%% p65 2
clear
clc
g=@(x) (3+x-2*x^2)^(1/4);
fixed_point_iteration(1,10^-4,20,g);
g=@(x) ((x+3-x^4)/2)^(1/2);
fixed_point_iteration(1,10^-4,20,g);
g=@(x)((x+3)/(x^2+2))^(1/2);
fixed_point_iteration(1,10^-4,20,g);
g=@(x)(3*x^4+2*x^2+3)/(4*x^3+4*x-1);
fixed_point_iteration(1,10^-4,20,g);