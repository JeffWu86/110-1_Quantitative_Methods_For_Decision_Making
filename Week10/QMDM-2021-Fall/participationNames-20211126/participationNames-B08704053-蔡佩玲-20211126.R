
ComparisonWithBenchmark = list.files("C:/Users/Erika/Downloads/11.26 R/comparisonWithBenchmark-20211119")
MikeMarin = list.files("C:/Users/Erika/Downloads/11.26 R/mikeMarinSummary-20211119")
MostVideos = list.files("C:/Users/Erika/Downloads/11.26 R/mostVideos-20211119")
cwb = as.data.frame(ComparisonWithBenchmark)
mm = as.data.frame(MikeMarin)
mv = as.data.frame(MostVideos)

library(stringr)
mm[[1]]
a1 = str_locate(mm[[1]],"-")
a2=str_locate(mm[[1]],"-2021")
name1=as.data.frame(str_sub(mm[[1]], a1[,2]+11, a2[,1]-1))

cwb[[1]]
b1=str_locate(cwb[[1]],"-")
b2=str_locate(cwb[[1]],"-2021")
name2=as.data.frame(str_sub(cwb[[1]], b1[,2]+11, b2[,1]-1))

mv[[1]]
c1=str_locate(mv[[1]],"-")
c2=str_locate(mv[[1]],"-2021")
name3=as.data.frame(str_sub(mv[[1]], c1[,2]+11, c2[,1]-1))

results = c(as.matrix(name1,name2,name3))
finalResult = unique(results)
finalResults = data.frame(Names=finalResult)
finalResults
