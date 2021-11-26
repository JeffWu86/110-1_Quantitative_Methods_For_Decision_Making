
### comparison
getwd()
list.files(path = "/Users/stephanie/Desktop/110-1/學習/數量方法與分析決策/comparisonWithBenchmark-20211119", pattern = NULL, all.files = FALSE,
           full.names = FALSE, recursive = FALSE,
           ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

fileNames1 <- list.files(path = "/Users/stephanie/Desktop/110-1/學習/數量方法與分析決策/comparisonWithBenchmark-20211119", pattern = NULL, all.files = FALSE,
                        full.names = FALSE, recursive = FALSE,
                        ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

aa <- as.data.frame(fileNames1)
View(aa)

library(stringr)

data.frame(fileNames1)
AAA <- str_sub(aa[,1],35,37)

### Summary

getwd()
list.files(path = "/Users/stephanie/Desktop/110-1/學習/數量方法與分析決策/mikeMarinSummary-20211119", pattern = NULL, all.files = FALSE,
           full.names = FALSE, recursive = FALSE,
           ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

fileNames2 <- list.files(path = "/Users/stephanie/Desktop/110-1/學習/數量方法與分析決策/mikeMarinSummary-20211119", pattern = NULL, all.files = FALSE,
                         full.names = FALSE, recursive = FALSE,
                         ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

bb <- as.data.frame(fileNames2)
View(bb)

data.frame(fileNames2)
BBB <- str_sub(bb[,1],28,30)


### mostVideos

getwd()
list.files(path = "/Users/stephanie/Desktop/110-1/學習/數量方法與分析決策/mostVideos-20211119", pattern = NULL, all.files = FALSE,
           full.names = FALSE, recursive = FALSE,
           ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

fileNames3 <- list.files(path = "/Users/stephanie/Desktop/110-1/學習/數量方法與分析決策/mostVideos-20211119", pattern = NULL, all.files = FALSE,
                         full.names = FALSE, recursive = FALSE,
                         ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

cc <- as.data.frame(fileNames3)
View(cc)


data.frame(fileNames3)
CCC <- str_sub(cc[,1],22,24)

### Unique

filesNames=c(AAA,BBB,CCC)
Final <- unique(filesNames)

RRR <- as.data.frame(Final)
View(RRR)

### ends here thanks!!!!


dd <- rbind(fileNames1, fileNames2)
View(dd)

ee <-rbind(dd, fileNames3)
View(ee)

###

install.packages(dplyr)
library(dplyr)



library(stringr)
# 打開stringr函式前要用這個
install.packages("stringr")