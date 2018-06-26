n=100
k=5
M<-matrix(runif(n*n),n,n)
M<-M+t(M)
M<-M-1
m<-mean(M)
M<-ifelse(M>=m,1,0)
diag(M)<-0

sam<-sample(1:(n-1),(k-1),replace=FALSE)
for(i in 1:(k-1)){
	M[1:sam[i],(sam[i]+1):n]<-0
	M[(sam[i]+1):n,1:sam[i]]<-0
}
g1<-graph.adjacency(M,mode="undirected")
plot(g1,vertex.size=6)


