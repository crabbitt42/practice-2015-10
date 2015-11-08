a <- 1:10
b <- 11:20
c <- a*b
d <- c[5]
e <- c[c >50]
alpha <- matrix( c(7,9,12,2,4,13), nrow=2, ncol=3)
alpha
beta <- matrix( c(1,7,12,19,2,8,13,20,3,9,14,21), nrow=3, ncol=4)
beta
cappa <- alpha %*% beta
cappa
library(datasets)
newser <- mtcars
colMeans(newser, na.rm = T)
mpg <- newser[,c(1)]
hp <- newser[,c(4)]
dispdrat <- newser[c(3,5),]
hp
bighp <- newser[newser$hp > 100,]
randomvec <- c("cat","dog","cow", "pig")
for(i in 1:4){
  if (randomvec[i] == "dog"){
  print(randomvec[i])
  }
}
stats <- function(a1,b1){
  cat("Arg1 Mean =",mean(a1), "\n")
  cat("Arg1 SD =",sd(a1), "\n")
  cat("Arg2 Median =",median(b1),"\n")
  cat("Arg2 SD =",sd(b1),"\n")
}
stats(newser[,c(3)],newser[,c(5)])
lapply(newser, range, na.rm = T)
sapply(newser, range, na.rm = T)
# lapply returns the range of each property as it's own vector; sapply returns a matrix of properties and ranges.
mapply(sum, newser[,c(1,6,7)])
tapply(newser[,4],newser[,10], max)
