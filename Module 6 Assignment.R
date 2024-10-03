#Module 6 Assignment - Doing Math in R Part 2

#Question 1
A <- matrix(c(2, 0, 1, 3 ), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

sum <- A + B
sum

difference <- A - B
difference


#Question 2
x <- c(4, 1, 2, 3)
diag_matrix <- diag(x, nrow = 4, ncol = 4)
diag_matrix

#Question 3
diag_matrix2 <- diag(x = 3, nrow = 5, ncol = 5)
diag_matrix2

diag_matrix2[,1] <- 2
diag_matrix2[1,] <- 1
diag_matrix2[1,1] <- 3
diag_matrix2

