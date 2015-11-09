---
title: "Code as Manuscript"
author: "Melissa Polonenko"
date: "Monday, November 02, 2015"
output: html_document
---

```{r}
getwd()
setwd("C:/Users/Melissa/Desktop/practice-2015-10/melissa-polonenko/intror")
dir() # shows whatever you have in this folder(same as ls in terminal for GitHub)

airQuality <- read.csv("../../data/airQuality.csv", header=TRUE) #keep the headers when we import

head(airQuality) # first 6 rows of dataframe
head(airQuality, n=3) # first 3 rows
[tail(airQuality) # last 6 rows

nrow(airQuality) # number of rows
ncol(airQuality) # number of columns

str(airQuality) # structure


summary(airQuality)

mean(airQuality$Ozone, na.rm=TRUE) # so you get a mean even with missing (na) data; na.rm means remove na

names(airQuality)[2] <- "Solar" # rename column 2
head(airQuality)

airQuality$Random <- rnorm(153,1,2) # create a random variable; note everything has to have the same number of rows

#subset data
rowThree <- airQuality[3,] # taking everything from row 3
str(rowThree) # still a dataframe b/c had different classes of data

colFour <- airQuality[,4]
str(colFour) # a vector

ozone <- airQuality$Ozone # also a vector


#Another subset option
highTemp <- airQuality[airQuality$Temp >80,] #operating on a dataframe (2-D), take all the rows with airquality >80
highTemp2 <- airQuality$Temp[airQuality$Temp>80] #working on only a column, which is 1-D

#look at all the rows that have a specific value
may <- airQuality[airQuality$Month=="May",]
head(may)
tail(may)

mayand65 <- airQuality[airQuality$Month=="May" & airQuality$Temp >65,]
head(mayand65)

mayor65 <- airQuality[airQuality$Month=="May" | airQuality$Temp>65,] #or
head(mayor65)

rm(may2)

mean(airQuality$Ozone, na.rm=T)

airQualNoMonth <- airQuality[,-5] #remove 5th column
means <- colMeans(airQualNoMonth, na.rm=T) #cannot work if you have char or factors in the df

lapply(airQuality, sd, na.rm=T) # gives a list; looping without actually going into loops (vectorization)

sd <- sapply(airQuality, sd, na.rm=T) # same thing as lapply but simplifies if it can - easier to deal with (eg into vector vs list)

tapply(airQuality$Ozone, airQuality$Month, range, na.rm=T) #applies a functin over a subset


# Create your own function

columnmean <- function(y, remove.NA=TRUE){
  nc <- ncol(y) # number of columns
  means <- vector("numeric",length=0) # create a blank vector
  for(i in 1:nc){
    means[i] <- mean(y[,i],na.rm=remove.NA)
  } 
  means #call the vector you created
}

columnmean(airQuality)

library(datasets)

```

