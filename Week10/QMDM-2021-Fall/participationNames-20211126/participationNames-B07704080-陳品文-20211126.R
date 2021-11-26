library(stringr)

fileNames1 <- list.files("comparisonWithBenchmark-20211119",full.names=FALSE)

fileNames2 <- list.files("mikeMarinSummary-20211119",full.names=FALSE)

fileNames3 <- list.files("mostVideos-20211119",full.names=FALSE)


split1 <- str_split_fixed(fileNames1,"-", n=4)
split2 <- str_split_fixed(fileNames2,"-", n=4)
split3 <- str_split_fixed(fileNames3,"-", n=4)

list <-c(split1[,3],split2[,3],split3[,3])
finalResult <- unique(list)