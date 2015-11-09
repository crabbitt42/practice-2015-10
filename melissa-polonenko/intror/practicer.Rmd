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
tail(airQuality) # last 6 rows

nrow(airQuality) # number of rows
ncol(airQuality) # number of columns

str(airQuality) # structure


summary(airQuality)

mean(airQuality$Ozone, na.rm=TRUE) # so you get a mean even with missing (na) data; na.rm means remove na



```

