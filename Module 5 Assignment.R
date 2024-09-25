#Module 5 Assignment: Doing Math

#Matrices code

A <- matrix((1:100), nrow = 10)
B <- matrix(1:1000, nrow= 10)

#Finding the Determinant of each Matrix

detA <- det(A)
detB <- det(B)
print(detA)
#Due to B being a non-square matrix (100x10), it does not have a determinant, which disqualifies it from being able to be inversed

#Inverse Matrix A
print(A)
solvedA <- solve.default(A)
#Here is another error, where the inverse of A cannot be computed due to the determinant of A being 0, causing an error when trying to compute the inverse
