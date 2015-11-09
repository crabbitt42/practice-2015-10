# Challenge 1

a <- 1:10
b <- 11:20
c <- a*b
d <- c[5]
e <- c[c>50]

# Challenge 2

alpha <- c(7,9,12,2,4,13)
dim(alpha) <- c(2,3)

beta <- matrix(c(1,7,12,19,2,8,13,20,3,9,14,21), nrow=3, ncol=4)

delta <- alpha %*% beta

# Challenge 3

library(datasets)
str(mtcars)
summary(mtcars)
mtCars <- mtcars
colmeans <- sapply(mtCars, mean)

mpg <- mtCars$mpg
fourthcol <- mtCars[,4]
thirdfifthrow <- mtCars[c(3,5),]
hpmore100 <- mtCars[mtCars$hp>100,]
hpmore100.2 <- mtCars$hp[mtCars$hp>100]


# Challenge 4

animal <- c("cat","dog","cow","pig")

for (i in 1:4){
  animal2 <- ifelse(animal=="dog","dog","other")
}


# Challenge 5

stats <- function(y,z){
  mean_y <- mean(y)
  sd_y <- sd(y)
  median_z <- median(z)
  values <-c(mean_y,sd_y,median_z)
  stat <- c("Mean_y","SD_y","Median_Z")
  cbind(values,stat)
  } 
  
stats(mtCars$disp,mtCars$drat)  

stats2 <- function(y,z){
  print(mean(y))
  print(sd(y))
  print(median(z))
}
stats2(mtCars$disp,mtCars$drat)  


# Challenge 6

ranges <- lapply(mtCars, range)
ranges2 <- sapply(mtCars, range)

# both lapply and sapply give the ranges for every column; however, sapply simplifies the output into a more useable (visible) manner.

# Challenge 7

head(mtCars)
specs <- mtCars[,c(1,6,7)]
sums <- mapply(sum, specs)

# Challenge 8

maxes <- tapply(mtCars$hp, mtCars$gear, max)
