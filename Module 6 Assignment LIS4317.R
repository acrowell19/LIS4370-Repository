#Module 6 Assignment

#Importing the dataset
library(readxl)
data <- read_excel("C:/Users/aecro/Documents/School Files/USF Files/51123 covid cases.xlsx")

#Creating Visualizations

#Histogram
histogram_cases <- hist(data$tot_cases, xlab = "Total Number of Cases", ylab = "# of States", main = "Total Covid Cases by US State", col = "blue")
histogram_deaths <- hist(data$tot_deaths, xlab = "Total Number of Deaths", ylab = "# of States", main = "Total Covid Deaths by US State", col = "black")

#Pie Chart
piechart_cases <- pie(data$tot_cases, labels = data$state, main = "Total Cases by US State")
piechart_deaths <- pie(data$tot_deaths, labels = data$state, main = "Total Deaths by US State")

#Boxplot
boxplot_cases <- boxplot(data$tot_cases, ylab = "Total Cases by State", main = "Total Covid Cases by US State", col = "red")
boxplot_deaths <- boxplot(data$tot_deaths, ylab = "Total Deaths by State", main = "Total Covid Deaths by US State", col = "grey")
