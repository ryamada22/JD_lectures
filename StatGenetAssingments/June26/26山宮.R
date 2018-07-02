init.S<-c(1,0,0)
p<-0.8
q<-0.5
r<-0.3
M<-matrix(c(p,1-p,0,0,q,1-q,1-r,0,r),3,3)

n<-100
SS<-matrix(0,n,3)
SS[1,]<-init.S
for(i in 2:n){
	SS[i,]<-M%*%SS[i-1,]
}
matplot(SS,type="l")

library(igraph)
g<-graph(edges=c(1,1,1,2,2,2,2,3,3,3,3,1),n=3,directed=T)


x=  #x is variable. 1~100 Natural number.
V(g)$size<-SS[x,]*100 
V(g)$label<-SS[x,]  
E(g)$width<-c(p,1-p,q,1-q,r,1-r)*5
E(g)$label<-c(p,1-p,q,1-q,r,1-r)


plot(g)