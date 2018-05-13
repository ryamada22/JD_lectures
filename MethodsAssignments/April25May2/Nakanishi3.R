# Make a function that takes as a vector of numbers and return the values of the output of functions, 
# mean(), var(), skewness(), and kurtosis() of the vector of input.
# Generate a random values in Normal distribution and apply the function above to the value set. 

x<- rnorm(10000, mean=5, sd=1)
# mean()
mean1 <- function(x) {
  n <- length(x)
  ret <- sum(x)/n
  return(ret)
}

mean(x)
mean1(x)

# var()
var1 <- function(x) {
  n <- length(x)
  m <- mean(x)
  s <- 1/(n-1)*sum((x-m)^2)
  return(s)
}

var(x)
var1(x)

# skewness() 歪度
skewness1 <- function(x) {
  n <- length(x)
  m <- mean(x)
  s <- sd(x)
  ret <- 1/n*sum((x-m)^3/s^3)
  return(ret)
}

skewness(x)
skewness1(x)

# kurtosis() 尖度
kurtosis1 <- function(x) {
  n <- length(x)
  m <- mean(x)
  s <- sd(x)
  ret <- 1/n*sum((x-m)^4/s^4)
  ret1 <- ret - 3
  return(ret1)
}

kurtosis(x)
kurtosis1(x)

# Show its skewness and kurtosis are essentially zero. Comment on what "essentially zero" means.
# 綺麗な正規分布であれば本質的には歪度や尖度はゼロになるはずであるが、
# それを証明するために正規分布にのった乱数を発生させた場合は
# 数を増やせば増やすほどより正規分布に近くはなるが真の意味では正規分布とならないため歪度や尖度はゼロにはなり得ない
# Draw a histogram of the random values.
hist(x)
# Generate two sets of random values, each of which follow Normal distribution with different mean and sd, respectively.
x1 <- rnorm(10000, mean=5, sd=1)
x2 <- rnorm(10000, mean=-5, sd=10)
hist(x2)
hist(x1, add=T, col=2)

           
            
            
            
            


Combine the two sets and treat them as one set. Draw the histogram of the combined set. Apply the function you generated to the combined set. Show its skewness and kurtosis are not zero.