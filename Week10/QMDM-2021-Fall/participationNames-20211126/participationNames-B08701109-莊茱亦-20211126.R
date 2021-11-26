library(stringr)

FileName1 <- list.files(path = "/Users/chu/110-1/數量方法/mikeMarinSummary-20211119")
FileName2 <- list.files(path = "/Users/chu/110-1/數量方法/comparisonWithBenchmark-20211119")
FileName3 <- list.files(path = "/Users/chu/110-1/數量方法/mostVideos-20211119")

pos1 <- str_locate(FileName1,"Summary-")
pos2 <- str_locate(FileName1, "-20")
Name1 <- str_sub(FileName1, start = pos1[ ,1]+18, end = pos2[ ,1]-1)

pos3 <- str_locate(FileName2,"mark-")
pos4 <- str_locate(FileName2, "-20")
Name2 <- str_sub(FileName2, start = pos3[ ,1]+15, end = pos4[ ,1]-1)

pos5 <- str_locate(FileName3,"Videos-")
pos6 <- str_locate(FileName3, "-20")
Name3 <- str_sub(FileName3, start = pos5[ ,1]+17, end = pos6[ ,1]-1)

Names <- c(Name1, Name2, Name3)
UniqueNames <- unique(Names)

finalResult <- data.frame(Names = UniqueNames)