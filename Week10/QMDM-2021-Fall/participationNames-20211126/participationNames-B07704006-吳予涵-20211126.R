setwd("C:/Users/shini/Desktop/110-1 台大/數量方法與決策分析/week 10 1126/all homework")

library(stringr)

fileNames <- list.files("C:/Users/shini/Desktop/110-1 台大/數量方法與決策分析/week 10 1126/all homework",
                        full.names=FALSE)

homeworkName <- as.data.frame(fileNames)

View(homeworkName)

###mark seperation points###
point1 <- str_locate(homeworkName[[1]], "-")
point2 <- str_locate(homeworkName[[1]], "-2021")

###cut string for column titles###
NamePos <- str_sub(homeworkName[[1]], point1[,2]+1, point2[,1]-1)
View(NamePos)

homeworkNameDataFrame <- data.frame(Name=NamePos)

homeworkNameDataFrame2 <- as.data.frame(table(data))

i <- 1

for (i in 1:128)
{
  if (homeworkDataFrame[i,] == ToMax) 
  {
    print(c(homeworkDataFrame[i,1], homeworkDataFrame[i,2], homeworkDataFrame[i,3]))
  }
}