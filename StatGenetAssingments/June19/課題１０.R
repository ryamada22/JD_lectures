n <- 100
k <- 10
M <- matrix(runif(n*n),n,n)
M <- M + t(M)
M <- M - 1
m <- mean(M)
M <- ifelse(M >= m,1,0)
diag(M) <- 0
library(igraph)
s <- sample(1:n,k,replace=FALSE)
for(i in 1:k){
g <- graph.adjacency(M,mode="undirected")
M[1:s[i],s[i]:n] <- 0
M[s[i]:n,1:s[i]] <-0
}
plot(g,vertex.size=5)