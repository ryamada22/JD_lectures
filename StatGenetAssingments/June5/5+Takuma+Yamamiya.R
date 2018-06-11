library(igraph)

gtree<-graph(edges=
		c(1,2,2,3,3,4,4,5,4,6,2,7,7,8,7,9,9,10),n=10,directed=FALSE
)

plot(gtree)

T<-matrix(0,10,10)
T[1,2]<-1
T[2,3]<-1
T[3,4]<-1
T[4,5]<-1
T[4,6]<-1
T[2,7]<-1
T[7,8]<-1
T[7,9]<-1
T[9,10]<-1
T<-T+t(T)

gtree<-graph_from_adjacency_matrix(T,mode="undirected")

plot(gtree)

E(gtree)[1]$weight<-3
E(gtree)[2]$weight<-4
E(gtree)[3]$weight<-9
E(gtree)[4]$weight<-0.5
E(gtree)[5]$weight<-8
E(gtree)[6]$weight<-4
E(gtree)[7]$weight<-3
E(gtree)[8]$weight<-2
E(gtree)[9]$weight<-1

plot(gtree)

distances(gtree)


