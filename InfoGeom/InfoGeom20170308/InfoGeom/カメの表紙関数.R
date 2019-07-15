make.kame.hyoushi <- function(ttl="",n.kame=30,kame.col="blue",sub=""){



t <- seq(from=0,to=1,length=1000)*2*pi
kora <- cbind(cos(t),sin(t))
s <- 1/4
teashi <- kora*s
thetas <- c(0,1,2,4,5)/6*2*pi
teashi.ctr <- cbind(cos(thetas),sin(thetas))
teashi.coords <- matrix(0,nrow=0,ncol=2)
for(i in 1:length(thetas)){
	teashi.coords <- rbind(teashi.coords,cbind(teashi.ctr[i,1]+teashi[,1],teashi.ctr[i,2]+teashi[,2]))
}
teashi.out <- teashi.coords[which(apply(teashi.coords^2,1,sum)>1),]
shippo.st <- c(cos(pi),sin(pi))
shippo.s <- 0.1
shippo.l <- 0.4
shippo.x <- seq(from=0,to=-shippo.l,length=100)
shippo.y <- shippo.s * sin(shippo.x*2*pi/shippo.l)
shippo.coords <- cbind(shippo.st[1] + shippo.x,shippo.st[2]+shippo.y)
kame <- rbind(kora,teashi.out,shippo.coords)
#plot(rbind(kora,teashi.out,shippo.coords))

b <- 0.9
kame2 <- kame
kame2[,2] <- kame2[,2]*b
#plot(kame2,col=grey(1),axes=FALSE)
#points(kame2,cex=0.1,pch=20)

X <- matrix(0,nrow=0,ncol=2)
for(i in 1:n.kame){
	theta <- runif(1)*2*pi
	R <- matrix(c(cos(theta),-sin(theta),sin(theta),cos(theta)),2,2)
	new.kame <- t(R %*% t(kame2))
	mv <- runif(2)*n.kame/2
	new.kame <- cbind(new.kame[,1]+mv[1],new.kame[,2]+mv[2])
	X <- rbind(X,new.kame)
}
jpeg(filename = paste(ttl,".jpeg"), width = 5000, height = 5000,
    quality = 100, pointsize = 180,bg = "white", res = NA,
    restoreConsole = TRUE)
plot(X,col=grey(1),axes=FALSE,xlab="",ylab="",main=paste(ttl,"\n",sub))
points(X,cex=0.5,pch=20,xlim=range(X),ylim=range(X),col=kame.col)
dev.off()
}

# カメ頭数
n.kame <- 50
# カメ色
kame.col <- "orange"
# タイトル
ttl <- "InformationGeometry_5"
subttl <- "KLダイバージェンス"
make.kame.hyoushi(ttl,n.kame,kame.col,subttl)