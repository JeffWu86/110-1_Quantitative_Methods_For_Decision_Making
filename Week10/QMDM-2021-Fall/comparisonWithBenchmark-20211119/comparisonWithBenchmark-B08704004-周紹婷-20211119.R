
#loak benchmark RData
load("C:/Users/Julia/Documents/R/2021-Fall_QMDM/混亂的2021-11-05/homework-R08943016.RData")
homeworkBenchmark <- homework

#load my RData
load("C:/Users/Julia/Documents/R/2021-Fall_QMDM/混亂的2021-11-05/homework-B08704004-20211105.RData")
homeworkMine <- homework

#homework is benchmark
#Homework is mine

#Find if two data frames are identical.
all(homeworkBenchmark == homeworkMine)
homeworkBenchmark == homeworkMine

#Can also use setequal
setequal(homeworkBenchmark, homeworkMine)

if (all(homeworkBenchmark == homeworkMine) == T)
  print("They are exactly the same!")

###############################################

benchmark <- c(as.matrix(homeworkBenchmark))
mine <- c(as.matrix(homeworkMine))

#Find if two vectors are identical.
identical(benchmark, mine)

#Can also use setequal.
setequal(benchmark, mine)

if (identical(benchmark, mine) == T)
  print("They are exactly the same!")

##############################################
#Find if all elements in 'benchmark' are in 'mine'.
#Return TRUE.
library(dplyr)
unique(benchmark) %in% unique(mine)

##############################################
#Class Notes
compareResult <- (benchmark == mine)
which(!compareResult)
yy <- order(homeworkBenchmark[,2], decreasing = T)
newHomework1 <- homeworkBenchmark[yy,]
####################################################################

