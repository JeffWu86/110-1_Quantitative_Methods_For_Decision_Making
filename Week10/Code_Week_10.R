
#Base R, tidyverse
#https://drive.google.com/drive/folders/1z2GIPaOF4yOfUShku-IxzE62Kfr2BTbf?usp=sharing

#Advanced R, ggplot2
#https://drive.google.com/drive/folders/1Ze5IXiWfJQP9yIQVh5c3iFJfN8GOCA0L?usp=sharing

#dplyr, readr
#https://drive.google.com/drive/folders/16cV6AnnQqpgoijLYa4o294PJgFWV2JhU?usp=sharing

#googlesheets4, readxl
#https://drive.google.com/drive/folders/1UxhEkKsKb7duoZFd1V8ESWDNnE98b2ym?usp=sharing

#stringr
#https://drive.google.com/drive/folders/1ZmdDjhC4NEC7YYEpMzJyh4LROCSdTzQ_?usp=sharing


library(stringr)

files1 <- list.files("mostVideos-20211119")
files2 <- list.files("mikeMarinSummary-20211119")
files3 <- list.files("comparisonWithBenchmark-20211119")
files4 <- list.files("participationNames-20211126")


getNames <- function(oneFile) {
  pos1 <- str_locate_all(oneFile, "-")
  lengthList <- length(oneFile)
  allNames <- NULL
  for (i in 1: lengthList) {
    name <- str_sub(oneFile[i], (pos1[[i]][2,2]+1), (pos1[[i]][3,1]-1))
    allNames <- c(allNames, name)
  }
  return(allNames)
}


result1 <- getNames(files1)
result2 <- getNames(files2)
result3 <- getNames(files3)
result4 <- getNames(files4)

results <- c(result1, result2, result3, result4)
finalResult <- unique(results)
temp <- finalResult

finalResult <- data.frame(Names=finalResult)

whoSubmits <- function(oneResult) {
  submitTemp <- temp %in% oneResult
  submitTemp <- as.integer(submitTemp)
  indexTemp <- which(submitTemp==1)
  submission <- rep(NA, length(temp))
  submission[indexTemp] <- submitTemp[indexTemp]
  return(submission)
  } 


submission1 <- whoSubmits(result1)
submission2 <- whoSubmits(result2)
submission3 <- whoSubmits(result3)
submission4 <- whoSubmits(result4)

allSubmissions <- cbind(finalResult, 
                        "mostVideos-20211119"=submission1,
                        "comparisonWithBenchmark-20211119"=submission2,
                        "comparisonWithBenchmark-20211119"=submission3,
                        "participationNames-20211126"=submission4)




