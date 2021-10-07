# Week 2

## Video 4

#### Getting started with R, Part II: Creating vectors, matrices, and performing some simple operations on them

```R
# Create a vector with c or concatenate command
> x1 <- c(1,3,5,7,9)
> x1
[1] 1 3 5 7 9
# Create a vector of character elements by including "" around the elements
> gender <- c("male", "female")
> gender
[1] "male"	"female"
# Create a sequence of integer values using the colon (:)
> 2:7
[1] 2 3 4 5 6 7
# For more general case, use the "seq" command
> seq(from=1, to=7, by=1)
[1] 1 2 3 4 5 6 7
# A sequence running from 1 to 7 in increments of a third
> seq(from=1, to=7, by=1/3)
 [1] 1.000000 1.333333 1.666667 2.000000 2.333333 2.666667 3.000000
 [8] 3.333333 3.666667 4.000000 4.333333 4.666667 5.000000 5.333333
[15] 5.666667 6.000000 6.333333 6.666667 7.000000
# Use the "rep" command to create a vector of repeated numbers or characters
> rep(1, times=10)
[1] 1 1 1 1 1 1 1 1 1 1
# Repeate the characters "marin" and repeat 5 times
> rep("marin", times=5)
[1] "marin" "marin" "marin" "marin" "marin"
# Repeate a sequence multiple times
> rep(1:3, times=5)
[1] 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3
> rep(seq(from=2, to=5, by=0.25), times=5)
 [1] 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75 5.00
[14] 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75 5.00
[27] 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75 5.00
[40] 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75 5.00
[53] 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75 5.00
> rep(c("m", "f"), times=5)
[1] "m" "f" "m" "f" "m" "f" "m" "f" "m" "f"
>
> x <- 1:5
> y <- c(1,3,5,7,9)
>
# Add an value to each element of the vector using the "plus" command
> x+10
[1] 11 12 13 14 15
# Minus an value to each element of the vector using the "minus" command
> x-10
[1] -9 -8 -7 -6 -5
# Multiply an value to each element of the vector using the "multiply" command
> x*10
[1] 10 20 30 40 50
# Divide an value to each element of the vector using the "divide" command
> x/2
[1] 0.5 1.0 1.5 2.0 2.5
# If two vectors are of the same length, we may add/substract/mult/div # corresponding elements
> x
[1] 1 2 3 4 5
> y
[1] 1 3 5 7 9
> x+y
[1]  2  5  8 11 14
> x-y
[1]  0 -1 -2 -3 -4
> x*y
[1]  1  6 15 28 45
> x/y
[1] 1.0000000 0.6666667 0.6000000 0.5714286 0.5555556

# Extract elements of a vector using square brackets []
# The third element in y
> y[3]
[1] 5
# Including negative sign will extract all elements except the # elements
> y
[1] 1 3 5 7 9
> y[-3]
[1] 1 3 7 9
# The first three elements
[1] 1 3 7 9
> y[1:3]
# The first and fifth elements
[1] 1 3 5
> y[c(1, 5)]
[1] 1 9
# The elements without first and fifth elements
> y[-c(1, 5)]
[1] 3 5 7
# The elements that are less than 6
> y[y<6]
[1] 1 3 5

# Create a matrix of values using the "matrix" command
# Set the matrix value from one to nine
# Set "nrow" argument to 3, let R know matrix with three rows and hence three columns
# Set byrow equal to TRUE, note that this must be capital letters, let R knoow to enter these elements row-wise 
> matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=TRUE)
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
# Set byrow equal to FALSE, note that this must be capital letters, let R knoow to enter these elements column-wise 
> matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=FALSE)
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
> mat <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=TRUE)
> mat
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
# Using the square brackets to extract certain elements in the matrix
> mat[1, 2]
[1] 2
> mat[c(1, 3), 2]
[1] 2 8
# Leaving a row blank or empty will extract that entire row or column
> mat[2,]
[1] 4 5 6
> mat[,1]
[1] 1 4 7
# Preform element-wise addition, subtraction, multiplication or division
> mat*10
     [,1] [,2] [,3]
[1,]   10   20   30
[2,]   40   50   60
[3,]   70   80   90
```

---

Reference:

  [Create and Work with Vectors and Matrices in R | R Tutorial 1.4 | MarinStatslectures](https://www.youtube.com/watch?v=2TcPAZOyV0U&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=4)

---

