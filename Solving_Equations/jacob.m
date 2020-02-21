function g=jacob(f,x,h)
h=1e-4;
h2=2*h;
N=length(x);
x=x(:).';
I=eye(N);
for n=1:N
    g(:,n)=(feval(f,x+I(n,:)*h)-feval(f,x-I(n,:)*h))'/h2;
end 