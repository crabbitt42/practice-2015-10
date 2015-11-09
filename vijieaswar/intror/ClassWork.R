
getwd()

setwd("intror")

dir.create("")

setwd(file.choose())

getwd()
#[1] "/Users/pavithraeaswar/Desktop/practice-2015-10/vijieaswar"
dir.create('intror')
setwd('intror')
getwd()
#[1] "/Users/pavithraeaswar/Desktop/practice-2015-10/vijieaswar/intror"
 
  dir()
#this dir() is the same function as ls
  
#importing data
  airQuality <- read.csv("../../data/airQuality.csv", header=TRUE)
  #the ../../ says that it is going up 2 folders
  
  head(airQuality) #head shows first 6 rows of the dataframe you are working with
  
  head(airQuality, n=8)

  #how many rows your have  
  nrow(airQuality)
  ncol(airQuality)
  
  #what classes did R import as
  str(airQuality)
  
  summary(airQuality)
  
  mean(airQuality$Ozone, na.rm=TRUE) #this removes na
  #mean function does not remove NA- it will warn you
  #you dont want to automatically remove NA
  
  #changing column head of the 2nd column
  names(airQuality)[2]<- "Solar" 
  
  #dataframe should have the same number of rows. thats why you have the NA value
  #adding a new column. rnorm creates random values. 
  airQuality$Random <- rnorm(153, mean=1, sd=2)
  
  rowThree <- airQuality[3,]
rowThree
str(rowThree)
  #This is a part of the dataframe.
  
  colFour <- airQuality[,4]
  colFour
  str(colFour)
  #It shows as a vector. The single row becomes a dataframe because there are different classes of data, unlike the column
  
  #subsetting the entire column
  Ozone <- airQuality$Ozone
  Ozone
  
  #subsetting data depending ont he values based on values in a row
  highTemp <- airQuality[airQuality$Temp >80,]
  highTemp
  length(highTemp)
  nrow(highTemp)
  
  #can subset by column too? whenwould you want to do that
  
  may <- airQuality[airQuality$Month == "May",]
  head(may)
  
  
  may1 <- airQuality[airQuality$Month == "May" & airQuality$Temp >80,]
  head(may1)
  
  #| means OR
  may2 <- airQuality[airQuality$Month == "May" | airQuality$Temp >80,]
  head(may2)
  
  #rm means remove a dataframe
  rm(may)
  
  
  mean(airQuality$Ozone, na.rm=T)
  #colMeans is a good function
  colMeans(airQuality, na.rm=T) #wont do because the 5th has characterters/
  
  #removing hte month column because it couldnt have a mean value
  airQualNoMonth <- airQuality[,-5]
  head(airQualNoMonth)
  
  colMeans(airQualNoMonth, na.rm = T)
  
  #loops
  lapply(airQuality, sd, na.rm=T) #gives it in the form of a list
  sds <- sapply(airQuality, sd, na.rm=T) # sapply is simpler
  sds
  
  #apply will make everything into a matrix- remove factor column. 
  
  #tapply applies a command over a subset
#e.g., range on Ozone column by month
  applysubset <- tapply(airQuality$Ozone, airQuality$Month, range, na.rm=T)

  #creating functions
  #creating a dunction called columnmean 
  
  columnmean <- function(y, remove.NA=TRUE){
    nc <- ncol(y)
    means <- vector("numeric", length=0)
    for (i in 1:nc) {
      means[i] <- mean(y[,i],na.rm=remove.NA)
      
    }    
    means
  }

eg <-  columnmean(airQuality)
eg

Assignment 



    