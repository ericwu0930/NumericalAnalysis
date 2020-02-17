function [i,p]=bisection(a,b,TOL,N,f)
%% parameters
% input:  endpoints a,b; tolerance TOL; maximum number of iterations N; function f
% output: approximate solution p; iteration steps i;
%%
i=0;
while i<N
    i=i+1;
    p=a+(b-a)/2;
    if f(p)==0||(b-a)/2<TOL
        break;
    end
    if sign(f(a))==sign(f(p))
        a=p;
    else
        b=p;
    end
end
end