function [q r]=qr_customed(A)
%% parameters:
% input:matrix A
% output:q orthogonal matrix; r right triangular matrix
%% code:
[m n]=size(A);
r=A;
q=eye(m);
for i=1:min(m-1,n)
    x=r(i:end,i);
    w=zeros(size(x));
    w(1)=norm(x);
    v=x-w;
    H_=eye(m-i+1)-2*v*v'/(v'*v);
    H=eye(size(q));
    H(i:end,i:end)=H_;
    q=q*H;
    r=H*r;
end
end