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


###compare with benchmark-my edition###
View(homework)
all(homework == homeworkDataFrame)

###compare with benchmark-my edition 2###
i <- 1
j <- 1

for (i in 1:39, j in 1:39)
{
  if (homeworkDataFrame[i,j] == homework[i,j])
  {
    print("True")
  }
  else
  {
    print("False")
  }
}

##teacher's script##
homework1 <- homework
homework2 <- homeworkDataFrame
homework2[1,2] <- "1,2"
conResult1 <- c(as.matrix(homework1))
conResult2 <- c(as.matrix(homework2))
which(!(conResult1==conResult2))

qq <- homework1==homework2
View(qq)

###classmate's edition###
ww <- identical(homework, homeworkDataFrame)
View(ww)

xx <- identical(homework1, homework2)
View(xx)


yy <- order(homework1[,2], decreasing = T)
newHomework1 <- homework1(yy,)


newHomework1 <- homework1(, order(homework1[,2])
                          
    