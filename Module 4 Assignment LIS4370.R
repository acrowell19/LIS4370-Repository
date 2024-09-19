#Module 4 Assignment - Programming Structure

#Creating the data.frame

frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

data <- data.frame(frequency, BP, first, second, finalDecision)
data

#Omitting the NA row to create a boxplot & histogram

data_new <- na.omit(data)

#Creating a boxplot

boxplot(data_new$BP, xlab = "BP", ylab = "Blood Pressure", main = "Boxplot of Blood Pressure")
boxplot(data_new$frequency, data_new$first, data_new$second, data_new$finalDecision, names = c("Frequency", "First", "Second", "Final Decision"), main = "Patient Data Boxplot")

#Creating a histogram

hist(data$frequency)
hist(data$BP)
hist(data$first)
hist(data$second)
hist(data$finalDecision)