library(lessR)
library(dplyr)
library(psych)
library(xtable)
#Exercise 2
#Loadig of given Dataset
#the dataset
data <- read.csv("prostate-cancer-1.csv")
data
summary(data)
xtable(summary(data))
describe(data)
# missing values
data_miss <- (is.na(data))
data_miss
# 2
count <- table(data$Y)
barplot(count, col=c('blue','green'), xlab="Y", ylab = "Number of individuals")
# 3
dim(data)
# 4
boxplot(data[,c(2,5,4,7,8,3,6,9)])
plot(data[,c(2,5,4,7,8,3,6,9)])
