library(dplyr)
library(stringr)

Comparison <- list.files("comparisonWithBenchmark-20211119")
MostV <- list.files("mostVideos-20211119")
Summary<- list.files("mikeMarinSummary-20211119")

F1 <- as.data.frame(Comparison)
F2 <- as.data.frame(MostV)
F3 <- as.data.frame(Summary)
#Comparison 
Id1 <- str_locate(F1[[1]], "k-")
Date1 <- str_locate(F1[[1]], "-20")
Name1 <- str_sub(F1[[1]], Id1[,2]+11, Date1[,1]-1)

#MostVideos
Id2 <- str_locate(F2[[1]], "s-")
Date2 <- str_locate(F2[[1]], "-20")
Name2 <- str_sub(F2[[1]], Id2[,2]+11, Date2[,1]-1)

#Summary
Id3 <- str_locate(F3[[1]], "y-")
Date3 <- str_locate(F3[[1]], "-20")
Name3 <- str_sub(F3[[1]], Id3[,2]+11, Date3[,1]-1)

Combination <-c(Name1, Name2, Name3)
Combination
unique(Combination)