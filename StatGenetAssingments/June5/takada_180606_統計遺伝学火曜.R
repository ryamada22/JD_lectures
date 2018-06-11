library(igraph)
g1 <- graph(edges=c(14,1,14,2,14,3,14,13,13,4,13,5,13,12,12,6,12,7,12,11,11,8,11,9,11,10), n=14, directed=F )
plot(g1)
get.adjacency(g1)#Also generate a adjacency matrix.
E(g1)$weight <- 10
edge_attr(g1)
plot(g1,edge.width= E(g)$weight)#Give positive integer values to the edges /and/ provide the edge weight to the graph object(s).
d <- distances(g1)#Obtain pairwise distance matrix between all vertex pairs.
