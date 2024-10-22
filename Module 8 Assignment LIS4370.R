#Module 8 Assignment - Input/Output, String Manipulation, plyr package

#Importing/Installing Packages
#install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
#install.packages("plyr")
library(data.table)
library(plyr)

#Step 1
#Importing the Dataset
data <- read.table("C:/Users/aecro/Documents/School Files/USF Files/Assignment6Dataset.txt", header = TRUE, sep = ",")
data

#Student Average by Sex
StudentAverage <- ddply(data, "Sex", transform, Grade.Average=mean(Grade))

#Step 2
#Writing a table with the results from step 1
write.table(StudentAverage, "Students_Gendered_Mean", sep = ",")

#Creating a new table with students with "i" in their name using grepl()
students_with_an_i <- subset(data, grepl("i", Name))

#Step 3
#Creating a CSV with the new data
write.table(students_with_an_i, "students_with_an_i", sep = ",")