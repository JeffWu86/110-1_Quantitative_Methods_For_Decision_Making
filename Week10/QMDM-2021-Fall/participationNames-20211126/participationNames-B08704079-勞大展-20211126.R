load("/Users/johnalao/Desktop/數量分析/QMDM-2021-Fall")
library(stringr)

comparison <- list.files(path = "/Users/johnalao/Desktop/數量分析/QMDM-2021-Fall/comparisonWithBenchmark-20211119",  full.names = FALSE)
summary <- list.files(path = "/Users/johnalao/Desktop/數量分析/QMDM-2021-Fall/mikeMarinSummary-20211119",  full.names = FALSE)
mostVideos <- list.files(path = "/Users/johnalao/Desktop/數量分析/QMDM-2021-Fall/mostVideos-20211119",  full.names = FALSE)

comparisondf <- as.data.frame(comparison)
summarydf <- as.data.frame(summary)  
mostVideos <- as.data.frame(mostVideos)

comparison[[1]]

a1 <- str_locate(comparisondf[[1]], "k-")
a2 <- str_locate(comparisondf[[1]], "-2")
a3 <- str_locate(summarydf[[1]], "y-")

names = str_sub(comparisondf[[1]], a1[,2]+11, a2[,1]-1)

homework1 <- data.frame(Name = names)
homework2 <- data.frame(Summary = str_sub(summarydf[[2]], a3[,2]+11, a2[,1]-1))
