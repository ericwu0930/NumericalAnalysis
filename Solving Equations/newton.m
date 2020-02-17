function [i,p]=newton(p0,TOL,N,f,fprime)
%% parameters
% input: initial approximation p0; tolerance TOL; maximum number of
% iterations N; function f; first order derivative of f. 
% output: approximate solution p
%%
i=1;
while i<=N
    p=p0-f(p0)/fprime(p0);
    if abs(p-p0)<TOL
        break;
    end
    i=i+1;
    p0=p;
end
if i>N
    fprintf("Procedure was unsuccessful");
else
    fprintf("Prodcdure was successful! Result is %d\nIteration steps are %d",p,i);
end
end
