install.packages("stringr")


library(stringr)
filenames <- list.files(path = "C:/Users/user/Desktop/R/mikeMarinSummary-20211119", full.names =FALSE)


file <- str_sub(aa[[1]],28,30)

filenames1 <- list.files(path = "C:/Users/user/Desktop/R/mostVideos-20211119", full.names =FALSE)
file1 <-str_sub(aa[[1]],22,24)

filename2 <- list.files(path = "C:/Users/user/Desktop/R/comparisonWithBenchmark-20211119", full.names =FALSE)

file2 <- str_sub(aa[[1]],35,37)

final <- c(file, file1, file2)

aa <- unique(final)

Result <- data.frame(Names = aa)

