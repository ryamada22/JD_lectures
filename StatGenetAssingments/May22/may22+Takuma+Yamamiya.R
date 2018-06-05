library(rgl)

a<-rnorm(1)
b<-rnorm(1)
c<-rnorm(1)

x<-rnorm(1000)
y<-rnorm(1000)
z<-(-a*x-b*y)/c

plot3d(x,y,z)



t<-rnorm(1000)*4
a.<-a*t
b.<-b*t
c.<-c*t

points3d(a.,b.,c.,col=2)