library(stringr)

fileNames1 <- list.files("C:/Users/USER/Desktop/NTU/110-1/QMDM/RCodes/mostVideos-20211119", full.names=FALSE)
aa <- as.data.frame(fileNames1)

fileNames2 <- list.files("C:/Users/USER/Desktop/NTU/110-1/QMDM/RCodes/mikeMarinSummary-20211119", full.names=FALSE)
bb <- as.data.frame(fileNames2)

fileNames3 <- list.files("C:/Users/USER/Desktop/NTU/110-1/QMDM/RCodes/comparisonWithBenchmark-20211119", full.names=FALSE)
cc <- as.data.frame(fileNames3)

View(aa)
View(bb)
View(cc)

x <- str_locate(aa[[1]], "-")
y <- str_locate(aa[[1]], "-2021")
name1 <- data.frame(Name=str_sub(aa[[1]], x[,2]+11, y[,1]-1))
View(name1)

s <- str_locate(bb[[1]], "-")
t <- str_locate(bb[[1]], "-2021")
name2 <- data.frame(Name=str_sub(bb[[1]], s[,2]+11, t[,1]-1))
View(name2)

u <- str_locate(cc[[1]], "-")
v <- str_locate(cc[[1]], "-2021")
name3 <- data.frame(Name=str_sub(cc[[1]], u[,2]+11, v[,1]-1))
View(name3)

result <- rbind(name1, name2, name3)
View(result)

finalresult <- unique(result)
View(finalresult)