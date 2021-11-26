
Sys.setlocale(locale="Chinese")

fileNames1 <- list.files(path="C:\\Users\\user\\Desktop\\數量方法與決策分析\\comparisonWithBenchmark-20211119", full.names = F)
fileNames1

fileNames2 <- list.files("C:\\Users\\user\\Desktop\\數量方法與決策分析\\mostVideos-20211119")
fileNames2
fileNames3 <- list.files("C:\\Users\\user\\Desktop\\數量方法與決策分析\\mikeMarinSummary-20211119")
fileNames3

Note1 <- as.data.frame(fileNames1)
View(Note1)
Note2 <- as.data.frame(fileNames2)
View(Note2)
Note3 <- as.data.frame(fileNames3)
View(Note3)

library(stringr)
Note1[[1]]
locate1 <- str_locate(Note1[[1]], "comp")
locate2 <- str_locate(Note1[[1]], "-202")
locate1
result_1 <- str_sub(Note1[[1]], locate1[,2]+31, locate2[,1]-1)
result_1

Note2[[1]]
locate1_2 <- str_locate(Note2[[1]], "most")
locate2_2 <- str_locate(Note2[[1]], "-202")
locate1_2
locate2_2
result_2 <- str_sub(Note2[[1]], locate1_2[,2]+18, locate2_2[,1]-1)
result_1

Note3[[1]]
locate1_3 <- str_locate(Note3[[1]], "mike")
locate2_3 <- str_locate(Note3[[1]], "-20")
locate1_3
locate2_3
result_3 <- str_sub(Note3[[1]], locate1_3[,2]+24, locate2_3[,1]-1)
result_3

finalResult <- data.frame("Names"=unique(c(result_1,result_2,result_3)))
finalResult

