list.files("C:/Users/q123q/Desktop/mikeMarinSummary-20211119",full.names=F)
list.files("C:/Users/q123q/Desktop/comparisonWithBenchmark-20211119",full.names=F)
list.files("C:/Users/q123q/Desktop/mostVideos-20211119",full.names=F)

mike <- list.files("C:/Users/q123q/Desktop/mikeMarinSummary-20211119",full.names=F)
comp <- list.files("C:/Users/q123q/Desktop/comparisonWithBenchmark-20211119",full.names=F)
most <- list.files("C:/Users/q123q/Desktop/mostVideos-20211119",full.names=F)

# mike名字定位
mikeData <- as.data.frame(mike)
mikeData[[1]][1]
h1 <- str_locate(mikeData[[1]],"mikeMarinSummary-")
h2 <- str_locate(mikeData[[1]],"-2021")

# mikeData有交的同學
str_sub(mikeData[[1]],h1[,2]+11,h2[,1]-1)
mikeResult <- str_sub(mikeData[[1]],h1[,2]+11,h2[,1]-1)
mikeResult

# comp名字定位
compData <- as.data.frame(comp)
compData[[1]][1]
c1 <- str_locate(compData[[1]],"comparisonWithBenchmark-")
c2 <- str_locate(compData[[1]],"-2021")

# compData有交的同學
str_sub(compData[[1]],c1[,2]+11,c2[,1]-1)
compResult <- str_sub(compData[[1]],c1[,2]+11,c2[,1]-1)
compResult

# most名字定位
mostData <- as.data.frame(most)
mostData[[1]][1]
m1 <- str_locate(mostData[[1]],"mostVideos-")
m2 <- str_locate(mostData[[1]],"-2021")

# most有交的同學
str_sub(mostData[[1]],m1[,2]+11,m2[,1]-1)
mostResult <- str_sub(mostData[[1]],m1[,2]+11,m2[,1]-1)
mostResult

# 合併三個向量
compare <- c(mikeResult, compResult, mostResult)

# unique(變數)：重複的被刪掉
finalResult <- as.data.frame(unique(compare))
finalResult
