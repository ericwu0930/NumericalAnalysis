function [x,i]=newtons(x0,TOL,N,f)
%% parameters:
%input:     f = a set of equations
%          p0 = initial point;
%         TOL = error tolerance
%           N = the maximum of iteration
%output     i = iteration steps
%           p = result
%% code
h=1e-4;
TolFun=eps;
for k=1:N
    fx0=feval(f,x0);
    dx=-jacob(f,x0,h)\fx0(:);
    x=x0+dx.';
    x0=x;
    if (norm(feval(f,x))<TolFun) || (norm(dx)<TOL)
        break;
    end
end
if k==N
    fprintf('The best in %d iterations\n',N);
end
end
