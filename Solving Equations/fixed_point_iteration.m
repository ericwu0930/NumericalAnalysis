function p=fixed_point_iteration(p0,TOL,N,g)
%% parameters
% input: initial approximation p0; tolerance TOL; maximum number of
% iterations N; function g.
% output: approximate solution p
%%
i=1;
while i<=N
    p=g(p0);
    if abs(p-p0)<TOL
        break
    end
    i=i+1;
    p0=p;
end
if i>N
    disp("procedure unsuccessful.")
else
    disp(sprintf("Procedure successful,result is %d\nIteration steps are %d",p,i));
end
end