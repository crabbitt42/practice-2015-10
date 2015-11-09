cat <- c("cat") # an example of a Character-based class
numeric <- c(1,2,3) # an example of a Numeric class
int <-(3L) # an integer class
t.true <- c(TRUE) # a logical class

# an OPERATOR is a character or sequence that tells R to do something - like "<-"

# a VECTOR object can only contain items of the same class. So, not a mix of numeric and logical, for e.g.

# a LIST is a type of vector that CAN contain objects of different classes
# your list might include a numeric dataframe, for example, plus a string vector

# a MATRIX is a vector with a dimension attribute - that is, you can specify two or more dimesions
# Like a vector, a matrix can only include one class of data. DATAFRAMES are good for that. 
# e.g. of a matrix:

egmatrix <- matrix(1:6, nrow = 2, ncol=3)

# you can convert a simple vector into a matrix using the command "dim(matrixname) <- c(nrow, ncol)"

# e.g.

dimension1 <- c(1:10)

dim(dimension1) <-c(2,5)
dimension1

# you can also create a matix by column-binding or row-binding with functions cbind() and rbind()

# IN GENERAL: if you are doing something a lot, MAKE IT INTO A FUNCTION.
# Great, so teach us to write functions.

# e.g. of cbind, rbind

# FACTORS are used to represent categorical variables (ordered and unordered)
# they are treated specially by modelling functions (like lm() and glm() .
# I just went through the process of trying to convert a numeric variable into a factor, but couldn't do it fastt enough. The internet knows how.

# DATAFRAMES: can be made using these functions: "read.table()", "read.csv()", or "data.frame()"

dataframe1 <- data.frame(v1=c(1:4), v2=c(T,F,T,F))
dataframe1

# ATTRIBUTES are basically the "meta data" of your objects. These are things like the objects' name, class, length, dimensions, other user-defined attributes

#DATAFRAMES' attributes can be modified with the "attributes()" function and other functions like "names()"

#in this example, "names()" is used to name the levels of an integer:

x <- 1:3
names(x)
names(x) <- c("alpha", "beta", "gamma")
names(x)
str(x) # note, the STR() command is very useful - it is used to identify the STRUCTURE of a variable.


getwd() # check the identity of the working directory. In this case, C:/Users/TrailJunkie/Documents
setwd("C:/Users/TrailJunkie/Desktop/practice-2015-10/bessgit/intror") # sets a new working directory out of which we will work for this exercise
 # dir.create(folderaddress) actually creates a new directory (folder) to work from.
dir() # similar to "ls" in the command line console -- it'll tell you what files are in your working directory.
airQuality <- read.csv("C:/Users/TrailJunkie/Desktop/practice-2015-10/data/airQuality.csv", header=TRUE)
#use "header=TRUE" to keep the first row as the variable headers in the new dataframe.
head(airQuality)
# note that the head() command shows the first 6 rows by default. To increase the number of rows, type:
# head(airQuality, row=10) for 10 rows.
#tail(airQuality, row=..) shows however many of the last rows of the dataset
#nrows(dataframename) and ncol(dataframe) tell us how many rows and columns are in the dataframe.
#str(dataframe) tells us the classes of the variables in the dataframe.
str(airQuality)
summary(airQuality)
# if you have NA values (missing values) in your variables, it could fuck up some of your calculations. use na.rm=TRUE to exclude them.

mean(airQuality$Ozone, na.rm=TRUE)
# change name of variable:
names(airQuality)[2] <- "Solar" # rename the second column's name
head(airQuality)
airQuality$Random <-rnorm(153, mean=1, sd=2) #rnorm creates a randomly numbers vector
head(airQuality)
rowThree <- airQuality[3,] # here we're subsetting an entire row as a vector (it'll be a data frame because it contains variables of different classes). It captures everthing in row 3, across all columns.
# note that if we decided to just take one column, in which all data are of the same class, R will automatically assign it as a vector. For e.g.:
colFour <- airQuality[,4]
str(colFour)
str(rowThree)

# subset all datapoints with temperature greater than 80:

highTemp <- airQuality[airQuality$Temp >80,]

# pulling out all rows in which the month is equal to "May"
May <- airQuality[airQuality$Month == "May",]
head(May)
may80 <- airQuality[airQuality$Month == "May" & airQuality$Temp >80,] 
head(may80)
mean(airQuality$Ozone, na.rm=T)
colMeans(airQuality, na.rm=T)

# get standard deviation

lapply(airQuality, sd, na.rm=T)
# lapply loops internally with C code, making the looping very fast. It takes two to three arguments: a list x (or another object that is coerced to a list); a function, including anonymous functions, which are user created without a name; other arguments as necessary. It will always return a list object



sapply(airQuality, sd, na.rm=T)

# making a function called "columnmean" for variable "y"
y <- 1:12
columnmean <- function(y, remove.NA=T){
 nc <- ncol(y) 
 means <- vector("numeric", length=0)
 for(i in 1:nc) {means[i] <- mean(y, [,i], na.rm = remove.NA)
 }
