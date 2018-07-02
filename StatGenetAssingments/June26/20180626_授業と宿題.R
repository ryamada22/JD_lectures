#6/26統計遺伝学授業＋宿題
library(igraph)

g <- make_lattice(c(5,5,5))
g2 <- make_lattice(length=5,dim=3)
plot(g)

g <- make_lattice(c(5,5,5))
plot(g)
g <- make_lattice(c(3,3))
plot(g)
g <- make_lattice(c(4,2))
plot(g)

ad.1 <- as_adjacency_matrix(g) 
ad.2 <- as_adjacency_matrix(g2)
dif <- ad.1 - ad.2
#本当にzero？を確認する。
sum(dif^2)
sum(abs(dif))
range(dif)

g3 <- graph.adjacency(dif,mode = "undirected")
plot(g3)
as_edgelist(g3)#０行２列の行列だ！
el <- as_edgelist(g3)
dim(el)#０行２列の行列だ！
is.matrix(el)
E(g3)
V(g3)
x <- 0:4
y <- 0:4
expand.grid(x,y)
rep(0:4,3)
rep(0:4,each=3)
xy <- cbind(rep(0:4,5),rep(0:4,each=5))
dim(xy)
dist(xy)#２つも条件考えるんちごて、全パターン作って、距離で考えたらええねん！！
dist.out <- as.matrix(dist(xy))
image(dist.out)
dist.out#これの１のみを取り出せば良いよね。
dist.out2 <- dist.out==1
image(dist.out2)
g4 <- graph.adjacency(dist.out2,mode = "undirected")
plot(g4)
#同じ事すれば、距離決めれば三角も作れるよね。という事。

#インフルエンザの例
S <- c(0.9,0.1,0)
p <- 0.95
q <- 0.5
r <- 0.1
M <- matrix(c(p,1-p,0,0,q,1-q,1-r,0,r),3,3)
S#確認
M#確認：colの合計は1.0である
apply(M,2,sum)
M %*% S -> S2
S3 <- M %*% S2
#じゃあ一般化してみよう。
init.s <- c(0.9,0,1.0)
M <- matrix(c(p,1-p,0,0,q,1-q,1-r,0,r),3,3)
n <- 10
SS <- matrix(0,n,3)
SS[1,] <- init.s
for(i in 2:n){
  SS[i,] <- M %*% SS[i-1,]
}
matplot(SS,type="l")
#以上を図示しよう
el <- matrix(c("H","F","F","R","R","H","H","H","F","F","R","R"),6,2,byrow=TRUE)
el
g5 <- graph.edgelist(el)
plot(g5)

#ここから宿題
p <- 0.95
q <- 0.5
r <- 0.1
k <- n#ここに1を入れれば初回のグラフになります。
V(g5)$size <- c(SS[k,1],SS[k,2],SS[k,3])
E(g5)$weight <- c(1-p,1-q,1-r,p,q,r)

V(g5)$size <- log(V(g5)$size*20)*20#サイズ感を微妙に調整する。
E(g5)$width <- E(g5)$weight*10 #同様
V(g5)$color <- c("orange", "green", "white")

plot(g5, vertex.label=V(g5)$name, edge.label=E(g5)$weight, main = "宿題のグラフ")














#授業中確かに気になってやってみた、関係ない４次元の世界
g <- make_lattice(c(2,2,2,2))
plot(g)#んー、4次元を2次元にしてもよくわかんない。