# 插值

### 1.拉格朗日插值法

插值曲线的阶次由插值点决定，误差边界公式由[Generalized Rolle's Theorem][1]导出。

[1]: https://people.clas.ufl.edu/bruceedwards/files/GeneralRolle.pdf

### 2.差分形式的牛顿插值法

同拉格朗日插值法本质是一样，都是full-degree polynomial interpolation, 只不过该方法是通过迭代的形式产生插值公式。

在Full-degree多项式插值中混存在Runge phenomenon，其原因是插值函数的阶次超过了插值点所拥有的阶次（个人理解）。其现象是在每个插值点的区间内，尤其是第一个区间和最后一个区间，出现了过度的震荡。

### 3.Hermite 插值法

### 4.三次S样条曲线插值