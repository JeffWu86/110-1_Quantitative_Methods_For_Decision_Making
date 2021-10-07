# Week 1

## Video 3

#### Getting started with R, Part I

```R
# Assign 11 to value x by equal sign =
> x = 11
# R is case sensitive
> X
Error: object 'X' not found
# Use arrow <- to assign value
> y <- 7
> y
[1] 7
# Overwritten y by value 9
> y <- 9
> y
[1] 9
# See the value in workspace or ls command to ask R the data stored in workspace
> ls()
[1] "x" "y"
# Remove an object using rm() command
> rm(y)
> y
Error: object 'y' not found
# Variable can include period and number
> x.1 <- 14
> x.1
[1] 14
# But number cannot be in the first character
> 1x <- 22
Error: unexpected symbol in "1x"
# Assign charcater values to variable
> xx <- "marin"
> xx
[1] "marin"
# Treat as character if we use quotations
> yy <- "1"
> yy
[1] "1"
> 11+14
[1] 25
> 7*9
[1] 63
> [x]
[1] 11
> x+y
[1] 20
> z <- x+y
> z
[1] 20
> y^2
[1] 81
> x^2 + y^2
[1] 202
> sqrt(y)
[1] 3
> y^(1/2)
[1] 3
> log(y)
[1] 2.197725
> exp(y)
[1] 8103.084
> log2(y)
[1] 3.169925
> abs(-14)
[1] 14
# Incomplete command
> sqrt(y
+
+ )
[1] 3
# Use arrow kep up will bring you to previous command
# Use # for command
```



---

Reference:

  [Getting started with R: Basic Arithmetic and Coding in R | R Tutorial 1.3 | MarinStatsLectures](https://www.youtube.com/watch?v=riONFzJdXcs&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=2)

---

