setwd("C:/Users/shini/Desktop/110-1 台大/數量方法與決策分析/week 09 1119")

library(stringr)

fileNames <- list.files("C:/Users/shini/Desktop/110-1 台大/數量方法與決策分析/week 09 1119/Benchmark_R08943016/QMDM-2021-11-05",
                        full.names=FALSE)


noteName <- as.data.frame(fileNames)

###mark seperation points###
point1 <- str_locate(noteName[[1]], "Marin")
point2 <- str_locate(noteName[[1]], "To")
point3 <- str_locate(noteName[[1]], "-")
point4 <- str_locate(noteName[[1]], "-2021")

###cut string for column titles###
FromPos <- str_sub(noteName[[1]], point1[,2]+1, point2[,1]-1)
ToPos   <- str_sub(noteName[[1]], point2[,2]+1, point3[,1]-1)
NamePos <- str_sub(noteName[[1]], point3[,2]+1, point4[,1]-1)


homeworkDataFrame <- data.frame(Name=NamePos, From=FromPos, To=ToPos)

save(homeworkDataFrame, file=paste0(getwd(),"homework-B07704006-20211105.RData"))

###find row with maximum in To###
nMax <- max(homeworkDataFrame[,3])

i <- 1
nNum <- 1
nRecord <- nrow(homeworkDataFrame)
for (i in 1:nRecord)
{
  if (i == 1)
  {
    #print (colnames(homeworkDataFrame))  
    cat ("No.", "Name", "From", "To", "File Name", "\n", sep="\t")
    cat ("-----------------------------------------------------------------", "\n")
  }
  if (homeworkDataFrame[i,3] == nMax) 
  {
    cat(nNum, homeworkDataFrame[i,1], homeworkDataFrame[i,2], homeworkDataFrame[i,3], fileNames[i], "\n", sep="\t")
    nNum <- nNum+1
    #print.data.frame(homeworkDataFrame[i,])
  }
  if (i == nRecord)
  {
    cat ("-----------------------------------------------------------------", "\n")
  }
  
}



###2nd edition: find row with maximum in To###
ToMax <- max(homeworkDataFrame[,3])

i <- 1

for (i in 1:38)
{
  if (homeworkDataFrame[i,3] == ToMax) 
  {
    print(c(homeworkDataFrame[i,1], homeworkDataFrame[i,2], homeworkDataFrame[i,3]))
  }
}