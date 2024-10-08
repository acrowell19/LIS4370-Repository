#Module 7 Assignment - R Object: S3 vs. S4

#Defining Dataset
mtcars <- mtcars

#Generic Functions
head(mtcars)
tail(mtcars)
list(mtcars)

#Determining what type of object oriented system an object is
str(mtcars)

#Determining base type of an object
typeof(mtcars)

#Creating an S3 example
S3_USdata <- list(country = "United States", population  = "333 million", GDP = "25.44 trillion")
S3_UKdata <- list(country = "United Kingdom", population = "68 million", GDP = "3.5 trillion")

#Creating an S4 example
setClass("Country", representation(name = "character", population = "numeric", GDP = "numeric"))

#creating S4 objects
S4_USdata <- new("Country", name = "United States", population = 333, GDP = 25.44)
S4_UKdata <- new("Country", name = "United Kingdom", population = 68, GDP = 3.5)

