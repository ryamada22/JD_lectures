library(GPArotation)

#(i)
k<-8
n<-1000
D<-matrix(rnorm(k*n),n,k) #data

D

M<-cov(D)

M

M-t(M)
eigen(M)[[1]]

#(ii)
J<-diag(abs(rnorm(k)))
R<-Random.Start(k)
M<-R%*%J%*%solve(R)

M

round(M-t(M),5)
eigen(M)[[1]]