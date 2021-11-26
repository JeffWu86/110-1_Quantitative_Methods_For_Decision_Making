library(stringr)
filenames <- list.files(path = "C:/Users/user/Documents/R/QMDM-2021-11-05", full.names =FALSE)
aa <- as.data.frame(framenames)

x1 <- str_locate(aa[[1]],"Marin")
x2 <- str_locate(aa[[1]],"To")
x3 <- str_locate(aa[[1]],"-")
x4 <- str_locate(aa[[1]],"-2021") 

str_sub(aa[[1]],x1[,2]+1,x2[,1]-1)
str_sub(aa[[1]],x2[,2]+1,x3[,1]-1)
str_sub(aa[[1]],x3[,2]+1,x4[,1]-1)

homework1 <- data.frame(Name=str_sub(aa[[1]],x3[,2]+1,x4[,1]-1),From=str_sub(aa[[1]],x1[,2]+1,x2[,1]-1),To=str_sub(aa[[1]],x2[,2]+1,x3[,1]-1))
To=str_sub(aa[[1]],x2[,2]+1,x3[,1]-1)

library(stringr)

#找出最大值

homework1[(which.max(str_sub(aa[[1]],x2[,2]+1,x3[,1]-1))),][1]
View(homework1)

