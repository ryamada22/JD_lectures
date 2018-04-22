#Mを設定する

V<-eigen(M)[[2]]
S<-diag(eigen(M)[[1]])

M.<-function(t){
	return(V%*%diag((eigen(M)[[1]])^t)%*%solve(V))
	
}

t<-seq(from=0,to=30,length=100)
x0<-c(1,1)
xs<-matrix(1,length(t),2)
for(i in 1:length(t)){
		xs[i,]<-M.(t[i])%*%x0
}
plot(Re(xs),type='l')