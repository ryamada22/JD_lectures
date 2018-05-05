## Assignment

#### Re-read "Properties of matrices", then describe "rank", "determinant", "trace" and "eigen values as you like, so that the description would be helpful for yourself a half year later. You can write in your mother tongue. In case the description is not in English or Japanese, do not anticipate feedback, though.

---

- rank

0でない固有値の数  
行列の変形で0ベクトルにならない行（列）ベクトルの最大本数

- determinant

面積（体積）の拡大率  
固有値の積

- trace

正方行列の対角成分の和  
行列のトレースはその行列の固有値の和に等しい

- eigen values

正方行列$A$に対し、
$$
\det (A-\lambda I)=0
$$
で求められる$\lambda$の値が行列$A$の固有値

---

#### Linear model, "y=ax + b" can be considered as an affine transformation. Assume a transformation that moves a point (x,0) to (x,ax). Make a matrix that does the transformation. Then make a matrix that moves a point (x,0) to (x,ax+b). How about a matrix that moves (x1,x2,0) to (a1x1 + a2x2,b1x1+b2x2). Then a matrix that moves (x1,x2,0) to (a1x1+a2x2+c,b1x1+b2x2+d).  

---

2次正方行列$M$によって
$$
M\begin{pmatrix}x \\ 0 \end{pmatrix}=\begin{pmatrix}x \\ ax \end{pmatrix}
$$
となると考えると、
$$
M=\begin{pmatrix}m_{11} & m_{12} \\ m_{21} & m_{22} \end{pmatrix}
$$
とすると、
$$
m_{11}x=x,\ \ m_{21}x=ax \\
m_{11}=1, \ \ m_{21}=a \\
M=\begin{pmatrix}1 & \text{any} \\ a & \text{any} \end{pmatrix}
$$
となる。次に、
$$
\begin{pmatrix}x \\ 0 \end{pmatrix} \to \begin{pmatrix}x \\ ax+b \end{pmatrix}
$$
となる行列を考える。これは先ほどの行列$M$で$(x,0) \to (x,ax)$に移動したあと$(0,b)$だけ移動すると考えられるので、
$$
\begin{pmatrix}x \\ ax+b \end{pmatrix}=M\begin{pmatrix}x \\ 0 \end{pmatrix}+\begin{pmatrix}0 \\ b \end{pmatrix}
$$
これをアフィン変換で考えると、
$$
\begin{pmatrix}x \\ ax+b \\ 1 \end{pmatrix}=
\begin{pmatrix}1 & \text{any} & 0 \\ a & \text{any} & b \\ 0 & 0 & 1 \end{pmatrix}
\begin{pmatrix}x \\ 0 \\ 1\end{pmatrix}
$$
次に、
$$
\begin{pmatrix}x_1 \\ x_2 \\ 0 \end{pmatrix} \to \begin{pmatrix}a_1x_1+a_2x_2 \\ b_1x_1+b_2x_2 \end{pmatrix}
$$
の変換を考える。移動先が$1\times 2$行列なので、変換する行列$S$は$2\times 3$行列となり、
$$
S=\begin{pmatrix}a_1 & a_2 & \text{any} \\ b_1 & b_2 & \text{any} \end{pmatrix}
$$
とすると、
$$
\begin{pmatrix}a_1x_1+a_2x_2 \\ b_1x_1+b_2x_2 \end{pmatrix}
=S\begin{pmatrix}x_1 \\ x_2 \\ 0 \end{pmatrix}
$$
が成立する。すると、
$$
\begin{pmatrix}x_1 \\ x_2 \\ 0 \end{pmatrix} \to \begin{pmatrix}a_1x_1+a_2x_2+c \\ b_1x_1+b_2x_2+d \end{pmatrix}
$$
の変換は、
$$
\begin{pmatrix}a_1x_1+a_2x_2+c \\ b_1x_1+b_2x_2+d \end{pmatrix}
=S\begin{pmatrix}x_1 \\ x_2 \\ 0 \end{pmatrix}
+\begin{pmatrix}c \\ d \end{pmatrix}
$$
と考えられるので、アフィン変換で考えると、
$$
\begin{pmatrix}a_1x_1+a_2x_2+c \\ b_1x_1+b_2x_2+d \\ 1 \end{pmatrix}
=\begin{pmatrix}a_1 & a_2 & \text{any} & c \\ b_1 & b_2 & \text{any} & d \\ 0 & 0 & 0 & 1 \end{pmatrix}
\begin{pmatrix}x_1 \\ x_2 \\ 0 \\ 1 \end{pmatrix}
$$
となる。