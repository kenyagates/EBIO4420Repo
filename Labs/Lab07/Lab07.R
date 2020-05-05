# Problem 1

# Designing a function to calculate the area of a triangle 
# To calculate: need .5*base*height
triangleArea <- function(base, height) {
  BaseHeight <- (base * height)
  Area <- (0.5 * BaseHeight)
  return(Area)
}
  
triangleArea(10, 9)

# Problem 2

myAbs <- function(x) {
  if (x < 0)
    return(-x)
  if (x >= 0)
    return(x)
}

myAbs(5)
myAbs(-2.3)

# modifying the code to work on a vector 


myAbs <- function(x, n) {
  for (i in 1:n) {
  if (x[i] < 0)
    print(-x[i])
  if (x[i] >= 0)
    print(x[i])
}
}

x <- c(1.1, 2, 0, -4.3, 9, -12) # x is the vector of values
n <- length(x) # n is the number of values within the vector
myAbs(x, n)

# Problem 3

# Writing a function to return the first n vlaues of the fibonacci sequence 

# code should return a vector of n length 
# each value is equal to [i-1]+[i-2]


Fibonacci <- function(n, x) {
  for (i in 3:n) {
    x[i] <- (x[i-1] + x[i-2])
    print (x)
  }
}
n <- 32
x <- rep(0, n)
x[1] <- 0
x[2] <- 1
# n is the desired length of the vector 
# x is the "storage vector" 

Fibonacci(n, x)

## Problem 4

# Part 4a: Writing a function that takes two numbers as its arguments and returns the square of the difference between them.(x - y) ^ 2.

result <- vector("numeric", (length(x))) # creating a vector container for the results
squared <- function(x, y) {
  n <- length(x) 
  m <- length(y)
  for (i in 1:n) {
   for (j in 1:m) {
     Difference <- (x[i] - y[j])
     squared <- (Difference * Difference)
     result[i] <- squared
     print(result)
   } 
  }
}
  

x <- c(2, 4, 6)

squared(x, 4)

# Part 4b: Writing a function of your own that calculates the average of a vector of numbers

mean <- function(x) {
  n <- length(x)
    sum <- sum(x)
    mean <- (sum / n)
    print(mean)
  }

x <- c(5, 15, 10)
mean(x)

# reading in lab 07 data file

x <- (read.csv("DataForLab07.csv"))
x <- read

mean2 <- function(x) {
  n <- nrow(x) # changing from length to row number
  sum <- sum(x)
  mean <- (sum / n)
  print(mean)
}

mean2(x)

 
# Part 4c: Writing a function that return the sum of squares

sum.square <- function(x) {
  n <- nrow(x)
  sum <- sum(x)
  mean <- (sum / n)  # using componants from mean function
  result <- vector("numeric", (length(x))) # vector from squared function
  for (i in 1:n) {
    Difference <- (x[i] - mean)
    squared <- (Difference[i] * Difference[i])
    result <- sum(squared) # componants from squared function
    print(result)
  }
}

sum.square(x)


