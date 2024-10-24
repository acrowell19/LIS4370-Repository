#Module 9 - Visualization in R

#Importing the dataset & ggplot2 package
library(ggplot2)
data <- read.csv("EmplUK.csv")

#Visualization 1
ggplot(data, aes(year, emp)) +
  geom_bar(aes(fill = year), stat = "identity") +
  labs(x = "Year", y = "Employment Rate", title = "UK Employment Rate by Year")

#Visualization 2
ggplot(data, aes(wage, output)) +
  geom_point(aes(color = year)) +
  geom_smooth(method = "lm") +
  labs(x = "Wage", y = "Output", title = "UK Output by Wages")

#Visualization 3
ggplot(data, aes(year, output)) +
  geom_boxplot(aes(group = year, fill = year)) +
  labs(x = "Year", y = "Output", title = "UK Output by Year")