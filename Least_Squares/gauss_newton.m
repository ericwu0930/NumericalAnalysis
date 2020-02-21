function x=gauss_newton(f,x0,N)
TOL=1e-4;
TolFun=eps;
h=1e-4;
for i=1:N
    fx0=feval(f,x0);
    A=jacob(f,x0,h);
    dx=-(A'*A)\(A'*fx0(:));
    x=x0+dx.';
    x0=x;
    if (norm(feval(f,x))<TolFun) || (norm(dx)<TOL)
        break;
    end
end
if i==N
    fprintf('The best in %d iterations\n',N);
end
end