getwd()

file1=list.files("/Applications/R code/comparisonWithBenchmark-20211119", full.names=FALSE)
file2=list.files("/Applications/R code/mikeMarinSummary-20211119", full.names=FALSE)
file3=list.files("/Applications/R code/mostVideos-20211119", full.names=FALSE)

class(file1)
datafr=as.data.frame(file1)
datafr2=as.data.frame(file2)
datafr3=as.data.frame(file3)

install.packages(stringr)
library(stringr)
?str_locate

str_sub(str_locate())
str_locate(datafr[1],"-")
locateName=str_sub(datafr[[1]],35,37)
locateName
View(locateName)

str_locate(datafr[1],"-")

str_locate(datafr2[1],"-")
locateName2=str_sub(datafr2[[1]],28,30)
locateName2


str_locate(datafr3[1],"-")
locateName3=str_sub(datafr3[[1]],22,24)
locateName3

files=c(locateName,locateName2,locateName3)
qq= unique(files)


