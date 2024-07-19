library(ggplot2)\

# Load Data
data = read.csv("E:/Second sem/SQL Server Management/titanic.train.csv")

# Load first few rows
head(data,5)

# Data cleaning

# Check for missing values
sum(is.na(data))

# Removing missing values
mis_vals = na.omit(data)

# Remove duplicate rows
rmv_dplcs = data[!duplicated(data),]

# Exploring & summerizing different types of data

# Frequency table for categorical variables
table(data$Survived)
table(data$Sex)
table(data$Pclass)
table(data$Embarked)

# Numerical Data Anlysis

# Summarize numerical variables such as 'Age' & 'Fare'
summary(data$Age)
summary(data$Fare)

# Visualizing Data
# bar chart for 'survived'
barplot(table(data$Survived), main = "survival count", xlab = "Survived", ylab = "count")

# Set margins:c(bottom,left,top,right)
par(mar = c(5,4,4,2)+0.1)

# Redraw the barplot for 'survived'
barplot(table(data$Survived), main = "Survival Count", xlab = "Age", ylab = "Count")

# Redraw the barplot for ''
``






