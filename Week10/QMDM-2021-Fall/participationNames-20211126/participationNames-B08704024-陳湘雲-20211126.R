fileNamesComparison=list.files("comparisonWithBenchmark-20211119",full.names=F)
fileNamesComparison
fileNamesMarin=list.files("mikeMarinSummary-20211119",full.names=F)
fileNamesMarin
fileNamesMost=list.files("mostVideos-20211119",full.names=F)
fileNamesMost

aa <-data.frame(fileNamesMarin)
bb <-data.frame(fileNamesMost)
cc <-data.frame(fileNamesComparison)

library(stringr)

a1 <- str_locate(aa[[1]], "-20")
a2 <- str_locate(aa[[1]], "mikeMarinSummary")
b1 <- str_locate(bb[[1]], "-20")
b2 <- str_locate(bb[[1]], "mostVideos")
c1 <- str_locate(cc[[1]], "-20")
c2 <- str_locate(cc[[1]], "comparisonWithBenchmark")
Name <- str_sub(aa[[1]], a2[,2]+12,a1[,2]-3)
Name
Name1 <- str_sub(bb[[1]], b2[,2]+12,b1[,2]-3)
Name1
Name2 <- str_sub(cc[[1]], c2[,2]+12,c1[,2]-3)
Name2

Combine=unique(c(Name,Name1,Name2))
Combine
combine=data.frame(Combine)
combine


