library(stringr)

file1 = list.files("comparisonWithBenchmark-20211119", full.names = FALSE)
file2 = list.files("mikeMarinSummary-20211119", full.names = FALSE)
file3 = list.files("mostVideos-20211119", full.names = FALSE)
data1 <- as.data.frame(file1, full.names = FALSE)
data1
data2 <- as.data.frame(file2, full.names = FALSE)
data2
data3 <- as.data.frame(file3, full.names = FALSE)
data3

data1[[1]]
a1 = str_locate(data1[[1]],"-")
a2 = str_locate(data1[[1]],"2021")
name1= str_sub(data1[[1]], a1[,2]+11,a2[,1]-2 )
name1

data2[[1]]
b1 = str_locate(data2[[1]],"-")
b2 = str_locate(data2[[1]],"2021")
name2 = str_sub(data2[[1]], b1[,2]+11,b2[,1]-2 )
name2

data3[[1]]
c1 = str_locate(data3[[1]],"-")
c2 = str_locate(data3[[1]],"2021")
name3 = str_sub(data3[[1]], c1[,2]+11,c2[,1]-2 )
name3

r = c(name1,name2,name3)
final = unique(r)
finalrs = as.data.frame(final)
finalrs

