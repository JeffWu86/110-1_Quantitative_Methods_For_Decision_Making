library(stringr)

filenames <- list.files(getwd(),full.names=F)

aa <- as.data.frame(filenames)
#aa[[1]]

a1 <- str_locate(aa[[1]],"Marin")
a2 <- str_locate(aa[[1]],"To")
a3 <- str_locate(aa[[1]],"-")
a4 <- str_locate(aa[[1]],"-2021")
#a1

#Name
str_sub(aa[[1]],a3[,2]+11,a4[,1]-1)
#From
str_sub(aa[[1]],a1[,2]+11,a2[,1]-1)
#To
str_sub(aa[[1]],a2[,2]+11,a3[,1]-1)

Homework <- data.frame(Name = str_sub(aa[[1]], a3[,2]+11, a4[,1]-1), From = str_sub(aa[[1]], a1[,2]+1, a2[,1]-1), To = str_sub(aa[[1]], a2[,2]+1, a3[,1]-1))

Homework[which(Homework[,3]==max(Homework[,3])),1]

