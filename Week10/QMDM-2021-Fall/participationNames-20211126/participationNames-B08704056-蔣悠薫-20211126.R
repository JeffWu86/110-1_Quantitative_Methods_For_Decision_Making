C:\Users\gyoyo\Desktop\QMDM-2021-Fall

C:/Users/gyoyo/Desktop/QMDM-2021-Fall/comparisonWithBenchmark-20211119
C:/Users/gyoyo/Desktop/QMDM-2021-Fall/mikeMarinSummary-20211119
C:/Users/gyoyo/Desktop/QMDM-2021-Fall/mostVideos-20211119

fileNames1 <- list.files(path = "C:/Users/gyoyo/Desktop/QMDM-2021-Fall/comparisonWithBenchmark-20211119", full.names=FALSE)
aa <- as.data.frame(fileNames1)
aa

fileNames2 <- list.files(path = "C:/Users/gyoyo/Desktop/QMDM-2021-Fall/mikeMarinSummary-20211119", full.names=FALSE)
bb <- as.data.frame(fileNames2)
bb

fileNames3 <- list.files(path = "C:/Users/gyoyo/Desktop/QMDM-2021-Fall/mostVideos-20211119", full.names=FALSE)
cc <- as.data.frame(fileNames3)
cc

a1 <- str_locate(aa[[1]], "mark")
a2 <- str_locate(aa[[1]], "-2021")

b1 <- str_locate(bb[[1]], "Summary")
b2 <- str_locate(bb[[1]], "-2021")

c1 <- str_locate(cc[[1]], "Videos")
c2 <- str_locate(cc[[1]], "-2021")

name1 <- str_sub(aa[[1]], a1[,1]+15, a2[,1]-1)
name2 <- str_sub(bb[[1]], b1[,1]+18, b2[,1]-1)
name3 <- str_sub(cc[[1]], c1[,1]+17, c2[,1]-1)

names <- c(name1, name2, name3)

xx <- unique(names)

namesAppearedAtLeastOnce <- data.frame(xx)

  
  
  
  
  
  
  
  