my.prob <- function(N,k,ps){
  factorial(N)/(factorial(k)*factorial(N-k)) * ps[1]^k * ps[2]^(N-k)
}

N <- 30
ks <- 0:N
pss <- seq(from=0,to=1,length=200)

outs <- matrix(0,length(ks),length(pss))

for(i in 1:length(ks)){
	for(j in 1:length(pss)){
		this.ps <- c(pss[j],1-pss[j])
		outs[i,j] <- my.prob(N,ks[i],this.ps)
	}
}
library(rgl)
persp(ks,pss,outs)
plot3d(rep(ks,length(pss)),rep(pss,each=length(ks)),c(outs))



