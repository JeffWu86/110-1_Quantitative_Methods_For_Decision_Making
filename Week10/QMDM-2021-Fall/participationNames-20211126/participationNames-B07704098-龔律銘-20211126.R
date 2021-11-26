#Find the person who had handed in at least one file. 
#Use the student ID to find out 
library(stringr)
aa <- as.data.frame("comparisonWithBenchmark-20211119")
a1 <- str_locate(aa[[1]])
aa[[1]]
a1 <- str_locate(aa[[1]],"-")
str_sub(aa[[1]],a1)

file1 <- ""
file2 <- ""
file3 <- ""

pos1 <- str_locate_all(file1,"-")
lengthList <- length(file1)
Names <- function(onefile) {
  allNames <- NULL 
  for ( i in 1:lengthList) {
    name <- str_sub(file1[i], pos1[[i]])
  }
}

resultA <-
resultB <-
resultC <- 
FinalResult <- 
unique <- c("","","")

#--
#more people, 