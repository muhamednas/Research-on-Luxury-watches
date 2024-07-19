# Loading and Summerizing data

# Load the dataset
titanic_data <- read.csv("D://KDU Visiting Lecs//Intake 41//Statistics//Week 01(02-07-2024)//titanic.train.csv")

#Display the 1st few rows
head(titanic_data)

#Summary Statistics
summary(titanic_data)

# Data Cleaning

# Check for missing values
sum(is.na(titanic_data))

#Remove missing values
titanic_data <- na.omit(titanic_data)

#Remove duplicate rows
titanic_data<-titanic_data[!duplicated(titanic_data), ]

#Exploring and Summerizing Different types of Data

# Categorical Data Analysis

#Frequency table for categorical variables
table(titanic_data$Survived)
table(titanic_data$Sex)
table(titanic_data$Pclass)

#Numerical Data Analysis

# Summarize numerical variables such as 'Age' and 'Fare'
# Summary statistics for numerical variables 
summary(titanic_data$Age)
summary(titanic_data$Fare)

#Visualizing Data
#Create bar charts for categorical variables and histograms for numerical
#`variables

# bar chart for 'Survived'
barplot(table(titanic_data$Survived), main = "Survival Count", xlab = "Survived", ylab = "Count")
# Set margins: c(bottom, left, top, right)
par(mar = c(5, 4, 4, 2) + 0.1)

# Redraw the barplot for 'Survived'
barplot(table(titanic_data$Survived), main = "Survival Count", xlab = "Survived", ylab = "Count")

# Redraw the histogram for 'Age'
hist(titanic_data$Age, main = "Age Distribution", xlab = "Age", ylab = "Frequency")

#Histogram for 'Age'
hist(titanic_data$Age, main = "Age ADistribution", xlab = "Age", ylab = "Frequency")

# Part 02
#Practice with Descriptive Statistics 

#Calculate Summary Statistics 
#Calculate mean, median, mode, variance, standard deviation for numerical variables

# Mean and Median of 'Age'
mean(titanic_data$Age, na.rm = TRUE)
median(titanic_data$Age, na.rm = TRUE)

#Variance and standard deviation of 'Fare'
var(titanic_data$Fare, na.rm = TRUE)
sd(titanic_data$Fare, na.rm = TRUE)

# Exploratory data Analysis(EDA)
# Box plot for 'Age'
boxplot(titanic_data$Age, main="Box Plot of Age", ylab="Age")

# Box plot for 'Fare'
boxplot(titanic_data$Fare, main="Box Plot of Fare", ylab="Fare")

# Perform cross-tabulation to analyze the relationship between two categorical variables
# Cross-tabulation of 'Survived' and 'Pclass'
table(titanic_data$Survived, titanic_data$Pclass)
