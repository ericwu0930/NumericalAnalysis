# 解方程

### 牛顿法

平方收敛，但如果f(p)==0&&f'(p)==0将从平方收敛退化。

如何解决？通过构造一个新的函数mu(x)，其中mu(p)==0 && mu'(p)!=0，详见Numerical Analysis p84 eg2.

![modified_newton_method](http://github.com/ericwu0930/NumericalAnalysis/raw/master/Solving%20Equations/img/modified_newton_method.jpg)