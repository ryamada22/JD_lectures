#Input  eigen vector value directly
make.matrix<-function(x,y,a,b,c,d)
	{
	V<-matrix(c(a,b,c,d),2,2)
	S<-diag(c(x,y))
	M<-V%*%S%*%solve(V)
	return(M)
	}
	
#Input angle value of eigen vector	
make.matrix.<-function(x,y,θ1,θ2)
	{
		V<-matrix(c(cos(θ1),sin(θ1),cos(θ2),sin(θ2)),2,2)
		S<-diag(c(x,y))
		M<-V%*%S%*%solve(V)
		return(M)
	}