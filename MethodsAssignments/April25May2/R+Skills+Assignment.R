#This week's assignment is on R language.
x <- rnorm(1000,1,1)
mean(x)
var(x)
skewness(x)
kurtosis(x)
#Make a function that takes as a vector of numbers and return the values of the output of functions, mean(), var(), skewness(), and kurtosis() of the vector of input.
#Generate a random values in Normal distribution and apply the function above to the value set. Show its skewness and kurtosis are essentially zero. Comment on what "essentially zero" means.

hist(x)
#Draw a histogram of the random values.

y <- rnorm(1000,1,.25)
z <- rnorm(1000,10,.3)
#Generate two sets of random values, each of which follow Normal distribution with different mean and sd, respectively.

a = y + z
mean(a)
var(a)
skewness(a)
kurtosis(a)
hist(a)
#Combine the two sets and treat them as one set. Draw the histogram of the combined set. Apply the function you generated to the combined set. Show its skewness and kurtosis are not zero.