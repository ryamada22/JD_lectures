# (2) Report R codes to generate positive-definite matrix, that is the matrix satisfying the features of covariance matrix, 
# i.e., symmetric and all eigenvalues being positive with two ways; 
# (i) by generating data matrix and making its covariance matirix, 
# (ii) by generating a diagonal matrix whose diagonal elements >0 and sandwich it with rotation matrix and its inverse.

library(Matrix) # isSymmetric
library(matrixcalc) # is.positive.definite
library(expm) # sqrtm

#create vectors -- these will be our columns
a <- c(1,2,3,4,5,6)
b <- c(2,3,5,6,1,9)
c <- c(3,5,5,5,10,8)
d <- c(10,20,30,40,50,55)
e <- c(7,8,9,4,6,10)

#create matrix from vectors
M <- cbind(a,b,c,d,e)

#(i)create covariance matrix
C <- cor(M)
C
is.positive.definite(C)

#(ii)create covariance matrix
eigen.out <- eigen(C)
eigen.out
V <- eigen.out[[2]] 
S <- diag(eigen.out[[1]])
V %*% S %*% solve(V)




