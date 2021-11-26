getwd()

library(stringr)

file1 <- list.files("mostVideos-20211119" , full.names = FALSE)

file_1 <- as.data.frame(file1)

file2 <- list.files("mikeMarinSummary-20211119" , full.names = FALSE)

file_2 <- as.data.frame(file2)

file3 <- list.files("comparisonWithBenchmark-20211119" , full.names = FALSE)

file_3 <- as.data.frame(file3)

names_1 <- str_locate(file_1[,1] , "-")
