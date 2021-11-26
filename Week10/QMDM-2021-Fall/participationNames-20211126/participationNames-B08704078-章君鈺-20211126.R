library(stringr)
filenames <- list.files(path = "/Users/zhangjunyu/mostVideos-20211119",  full.names = FALSE)
aa <- as.data.frame(filenames)

remove(filenames[1])

aa[[1]]

a3 = str_locate(aa[[1]], "-")
a4 = str_locate(aa[[1]], "-2021")

name = str_sub(aa[[1]], a3[,2]+11, a4[,1]-1)

result1 = name

  
filenames2 <- list.files(path = "/Users/zhangjunyu/mikeMarinSummary-20211119",  full.names = FALSE)
bb<- as.data.frame(filenames2)

remove(filenames2[1])

bb[[1]]

b3 = str_locate(bb[[1]], "-")
b4 = str_locate(bb[[1]], "-2021")

name2 = str_sub(bb[[1]], b3[,2]+11, b4[,1]-1)

result2 = name2


filenames3 <- list.files(path = "/Users/zhangjunyu/comparisonWithBenchmark-20211119",  full.names = FALSE)
cc<- as.data.frame(filenames3)

remove(filenames3[1])

cc[[1]]

c3 = str_locate(cc[[1]], "-")
c4 = str_locate(cc[[1]], "-2021")

name3 = str_sub(cc[[1]], c3[,2]+11, c4[,1]-1)
result3 = name3

results = c(result1,result2,result3)
finalresult = unique(results)
finalresults = as.data.frame(finalresult)
finalresults