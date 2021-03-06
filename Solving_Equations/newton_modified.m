function [i,p]=newton_modified(p0,TOL,N,f,fprime,fpp)
%% 改进的牛顿法
%% parameters
% input: initial approximation p0; tolerance TOL; maximum number of
% iterations N; function f; first order derivative of f; second order derivative of f, fpp. 
% output: approximate solution p
%%
x=[p0];
hold on;
i=1;
while i<=N
    p=p0-f(p0)*fprime(p0)/(fprime(p0)^2-f(p0)*fpp(p0));
    if p<x(1)
        x=linspace(p-0.5,x(length(x)),100);
        plot(x,f(x),'b-');
    elseif p>x(length(x))
        x=linspace(x(1),p+0.5,100);
        plot(x,f(x),'b-');
    end
    plot([p0,p0],[0,f(p0)],'k--',[p,p],[0,f(p)],'k--',[p0,p],[f(p0),0],'k-');
    if abs(p-p0)<TOL
        break;
    end
    i=i+1;
    plot([p0,p0],[0,f(p0)],'k--',[p,p],[0,f(p)],'k--',[p0,p],[f(p0),0],'k-');
    p0=p;
end
if i>N
    fprintf("Procedure was unsuccessful\n");
else
    fprintf("Prodcdure was successful! Result is %d\nIteration steps are %d\n",p,i);
end
end