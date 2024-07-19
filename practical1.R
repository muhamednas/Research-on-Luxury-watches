library(ggplot2)

setwd("E:/First sem/rprogramming.RData")

#Import Data
Titanic = read.csv("E:/First sem/rprogramming.RData/titanic.train.csv")
Titanic

#Display first few rows
head(Titanic)

#Remove null values
na.omit(Titanic)

# Identify and remove duplicates
unique_data = Titanic[!duplicated(Titanic), ]

#Summary of the dataset
summary(Titanic)



