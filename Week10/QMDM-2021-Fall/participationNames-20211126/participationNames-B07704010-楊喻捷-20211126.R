library(stringr)

hw1 <- list.files("mikeMarinSummary-20211119",full.names = F)

n1 <- str_split_fixed( hw1, "-",n=4) 

hw2 <- list.files("comparisonWithBenchmark-20211119",full.names = F)

n2 <- str_split_fixed( hw2, "-",n=4) 

hw3 <- list.files("mostVideos-20211119",full.names = F)

n3 <- str_split_fixed( hw3, "-",n=4) 

NameList <- c(n1[,3],n2[,3],n3[,3])

NameListUnique <- data.frame(Names = unique(NameList)) 

View(NameListUnique)
