airQuality <- read.csv("C:/Users/TrailJunkie/Desktop/practice-2015-10/data/airQuality.csv", header=TRUE)


# Create the following vectors in R: a = 1 to 10; b = 11 to 20. Then, use vector arithmetic to multiply these vectors and put the results into a new variable c. 

a <- c(1:10)
a
b <- c(11:20)
b
c <- c(a*b)
c
#> c <- c(a*b)
#> c
# [1]  11  24  39  56  75  96 119 144 171 200

head(c)
summary(c)

#> summary(c)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#11.00   43.25   85.50   93.50  137.80  200.00 


# Select subsets of c to identify the following: The 5th element of c;All of elements of c that are greater than 50 
c[5]
#> c[5]
#[1] 75

c(>50)

c.above50 <-c(c>50)
c.above50 <- c[c>50]
c.above50

#> c.above50 <-c(c>50)
#> c.above50
#[1] FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#> c.above50 <- c[c>50]
#> c.above50
#[1]  56  75  96 119 144 171 200

alpha <- c(7,12,4,9,2,13, nrow=2, ncol=3)
alpha <- c(7,12,4,9,2,13)
alpha
dim(alpha) <- c(2,3)
alpha
beta <- matrix(c(1,7,12,19,2,8,13,20,3,9,14,21), nrow=3, ncol=4)
beta

gamma <- (alpha%*%beta)
gamma
library(datasets)
mtcars <- data.frame(mtcars, header=T)
str(mtcars)
mean(mtcars$disp, na.rm=T)
summary(mtcars, na.rm=T)
> summary(mtcars, na.rm=T)

> colMeans(mtcars, na.rm=TRUE)
mpg        cyl       disp         hp       drat         wt       qsec 
20.090625   6.187500 230.721875 146.687500   3.596563   3.217250  17.848750 
vs         am       gear       carb     header 
0.437500   0.406250   3.687500   2.812500   1.000000 

# Subset the mtcars dataset and make new vectors with: The column mpg, 


# The fourth column, 


# The third and fifth row


# When hp is greater than 100

mpg <- (mtcars$mpg)
summary(mpg)
> summary(mpg)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
10.40   15.42   19.20   20.09   22.80   33.90


hp <- (mtcars[,4])
hp
summary(hp)
> summary(hp)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
52.0    96.5   123.0   146.7   180.0   335.0 

row3n5 <- (mtcars[3&5,])
ro3n5
row3n5
row3n5 <- mtcars[3&5,]
row3n5

row5 <-mtcars[5,]
row5
row3 <- mtcars[3,]
row3
row3n5 <- data.frame(row5, row5)
row3n5
row3n5 <- rbind(row3, row5)

row3n5
 #FINALLY.
> row3n5 <- rbind(row3, row5)
> row3n5
mpg cyl disp  hp drat   wt  qsec vs am gear carb header
Datsun 710        22.8   4  108  93 3.85 2.32 18.61  1  1    4    1   TRUE
Hornet Sportabout 18.7   8  360 175 3.15 3.44 17.02  0  0    3    2   TRUE
> 
  
hpgreater100 <- mtcars[mtcars$hp>100,]
hpgreater100
> hpgreater100
mpg cyl  disp  hp drat    wt  qsec vs am gear carb header
Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4   TRUE
Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4   TRUE
Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1   TRUE
Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2   TRUE
Valiant             18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1   TRUE
Duster 360          14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4   TRUE
Merc 280            19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4   TRUE
Merc 280C           17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4   TRUE
Merc 450SE          16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3   TRUE
Merc 450SL          17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3   TRUE
Merc 450SLC         15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3   TRUE
Cadillac Fleetwood  10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4   TRUE
Lincoln Continental 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4   TRUE
Chrysler Imperial   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4   TRUE
Dodge Challenger    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2   TRUE
AMC Javelin         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2   TRUE
Camaro Z28          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4   TRUE
Pontiac Firebird    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2   TRUE
Lotus Europa        30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2   TRUE
Ford Pantera L      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4   TRUE
Ferrari Dino        19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6   TRUE
Maserati Bora       15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8   TRUE
Volvo 142E          21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2   TRUE




# Make a vector with the following arguments: "cat", "dog", "cow", "pig". Make a combination for loop and if/else expression that prints the second argument.


animals <- c("cat","dog","cow","pig")

animals
[1] "cat" "dog" "cow" "pig"

> as.factor(animals)
[1] cat dog cow pig
Levels: cat cow dog pig

#Make a combination for loop and if/else expression that prints the second argument
# Not completed. I honestly can't understand the description of the task.

