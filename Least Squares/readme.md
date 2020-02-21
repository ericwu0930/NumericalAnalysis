# Least Squares

### 1 Interpolation VS. Least Squares Fitting

* Interpolation means fitting some function to given data so that the function has the same values as the given data
* Least Squares Fitting is to derive a single curve that represents the **general trend of the data.**

### 2 Linear Least Squares

#### 2.1 The Normal Equation:

* Basic Idea

![3uVDJJ.png](https://s2.ax1x.com/2020/02/21/3uVDJJ.png)




$$
\begin{align*}
& (b-A\bar x)\perp \{Ax|x\in R^n\}\\\\
& (Ax)^T (b-A\bar x)=0 for\ all\ x\ in\ R^n\\\\
& A^T(b-A\bar x)=0\\\\
& A^T(b-A\bar x)=0\\\\
& A^TA\bar x=A^Tb
\end{align*}
$$

* The size of  the residual

$$
\begin{align*}
& The\ 2-norm\ of\ the\ residual\ vector:
||r||_2=\sqrt{r_1^2+...+r_m^2}\\
& The squared error:SE=r_1^2+...+r_m^2\\
& The root mean squared error:RMSE=\sqrt{SE/m}
\end{align*}
$$

* code

```matlab
function [res,se]=norm_equation(x,y,order)
%% parameters:
% input: x,y represent the given points; order means the order of
% parameterized model
% output: res means the coefficient of the parameterized model
%% code:
x=x(:);
y=y(:);
A=ones(length(x),order+1);
% construct matrix A
for i=2:order+1
    A(:,i)=x.^(i-1);
end
res=(A'*A)\(A'*y);
se=norm(A*res-y)^2;
u=linspace(min(x)-1,max(x)+1,100);
v=zeros(size(u));
for i=1:order+1
    v=v+res(i)*u.^(i-1);
end
plot(x,y,'ro',u,v,'b-');
fprintf("The squared error:\n SE=%d\n",se)
end
```

#### 2.2 QR Factorization

* Basic Idea:

  <img src="https://s2.ax1x.com/2020/02/21/3uVOw8.png" alt="image-20200221115454809" style="zoom:50%;" />
  $$
  \hat R=upper\ n\times n\ submatrix\ of\ R\\
  \hat d=upper\ n\ entries\ of\ d=Q^Tb\\
  Solve\ \hat R\bar x=\hat d\ for\ least\ squares\ solution\ \bar x
  $$
  

* How QR factorization?

  * Householder reflector

    <img src="https://s2.ax1x.com/2020/02/21/3uVgL6.png" alt="image-20200221120523669" style="zoom: 67%;" />
    $$
    \begin{align*}
    & Find\ Householder\ reflectors\ H\ to\ meet\ Hx=w\\
    & v=x-w\\
    & Map\ x\ to\ v: u=\frac{vv^T}{v^Tv}x\\
    & x-2\frac{vv^T}{v^Tv}x=w\\
    & H=(I-2\frac{vv^T}{v^Tv})
    \end{align*}
    $$
    For numerical stability, the sign is often chosen to be the opposite of the sign of the first component of ***x*** to avoid the possibility of subtracting nearly equal numbers when forming v.

  * QR Factorization Using Householder Reflector

#### 2.3 MATLAB Built-in Function

*polyfit*

### 3 Nonlinear Least Squares