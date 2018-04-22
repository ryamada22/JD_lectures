#Exercise 2-2
M<-matrix(c(1,2,2,4),2,2)
eigen.out<-eigen(M)
vector1<-eigen.out$vectors[,1]
M%*%vector1
M%*%vector1/vector1


#Exercise 2-3 
#always this return 2,,,this matrix transform all points on y=2x line.
check<-function(x,y)
	{
	p<-M%*%c(x,y)
	return(p[2]/p[1])
	}
	
check(12,10)	
check(23904,94)	
check(0,34)

#Exercise 2-4
M.inverse<-solve(M)
#All (p,q) is transformed on y=2x by M and it means many points transformed on the same point.
#For example, (1,0) and (0,0.5) is transformed on (1,2)
M%*%c(1,0)
M%*%c(0,0.5)
#If there is M inverse, when a point v transformed on a point u by M, M inverse transform u on v. However, in this case, the transformation from u to v is not determined uniquely.