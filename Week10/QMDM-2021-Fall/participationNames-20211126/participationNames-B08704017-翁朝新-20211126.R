library(stringr)
filenames <- list.files(path = "D:/msi D/Brian/大三上作業報告/數量方法/mostVideos-20211119", full.names = F)
aa <- as.data.frame(filenames)

filenames <- list.files(path = "D:/msi D/Brian/大三上作業報告/數量方法/comparisonWithBenchmark-20211119", full.names = F)
bb <- as.data.frame(filenames)

filenames <- list.files(path = "D:/msi D/Brian/大三上作業報告/數量方法/mikeMarinSummary-20211119", full.names = F)
cc <- as.data.frame(filenames)

num1 <- 11 * 2
num2 <- 12 * 2
num3 <- 35
num4 <- 35 + 2
num5 <- 2 * 14
num6 <- 2 * 15

  
aaa <- str_sub(aa[[1]], num1, num2)
bbb <- str_sub(bb[[1]], num3, num4)
ccc <- str_sub(cc[[1]], num5, num6)

abc <- c(aaa, bbb, ccc)
finalResult <- unique(abc)

finalResult <- data.frame(Names = finalResult)