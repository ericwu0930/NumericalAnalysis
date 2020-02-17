function [p,i]=secant(p0,p1,TOL,N,f)
%% ¸îÏß·¨
%% parameters
% input: initial approximation p0; tolerance TOL; maximum number of
% iterations N; function f; first order derivative of f. 
% output: approximate solution p
i=2;
q0=f(p0);
q1=f(p1);
while i<=N
    p=p1-q1*(p1-p0)/(q1-q0);
    if abs(p-p1)<TOL
        break;
    end
    i=i+1;
    p0=p1;
    q0=q1;
    p1=p;
    q1=f(p);
end
if i>N
    fprintf("Procedure was unsuccessful");
else
    fprintf("Prodcdure was successful! Result is %d\nIteration steps are %d",p,i);
end
end