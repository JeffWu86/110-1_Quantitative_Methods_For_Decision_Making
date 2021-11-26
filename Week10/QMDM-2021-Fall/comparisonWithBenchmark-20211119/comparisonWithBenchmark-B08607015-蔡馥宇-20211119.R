homework_benchmark = homework

install.packages("dplyr")
library(dplyr)

answer = all_equal(Homework, homework_benchmark, FALSE, FALSE)

if (answer == TRUE) {
  print("Exactly right")
} else {
  print("Not the same")
}
