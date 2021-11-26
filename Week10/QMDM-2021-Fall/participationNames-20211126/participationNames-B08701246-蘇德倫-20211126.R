fileName1=list.files(path = "C:/Users/b0870/Downloads/1126/mostVideos-20211119-20211126T024114Z-001/mostVideos-20211119", pattern = NULL, all.files = FALSE,
                  full.names = FALSE, recursive = FALSE,
                  ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)
video = as.data.frame(fileName1)
library("stringr")
pos1<-str_locate(video[[1]],"B")
pos2<-str_locate(video[[1]],"-2021")
Namev<-str_sub(video[[1]],pos1[,2]+10,pos2[,1]-1)


fileName2=list.files(path = "C:/Users/b0870/Downloads/1126/mikeMarinSummary-20211119-20211126T023700Z-001/mikeMarinSummary-20211119", pattern = NULL, all.files = FALSE,
                    full.names = FALSE, recursive = FALSE,
                    ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)
summary = as.data.frame(fileName2)
pos3<-str_locate(summary[[1]],"B")
pos4<-str_locate(summary[[1]],"-2021")
Names<-str_sub(summary[[1]],pos3[,2]+10,pos4[,1]-1)


fileName3=list.files(path = "C:/Users/b0870/Downloads/1126/comparisonWithBenchmark-20211119-20211126T023705Z-001/comparisonWithBenchmark-20211119", pattern = NULL, all.files = FALSE,
                    full.names = FALSE, recursive = FALSE,
                    ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)
bench=as.data.frame(fileName3)
pos5<-str_locate(bench[[1]],"B0")
pos6<-str_locate(bench[[1]],"-2021")
Nameb<-str_sub(bench[[1]],pos5[,2]+9,pos6[,1]-1)


Nameset<-c(Nameb,Names,Namev)
Result<-unique(Nameset)
FinalResult<-data.frame(Names=Result)