# R08943016

library(stringr)
rm(list = ls())

("C:/Users/Jeff/Google 雲端硬碟/同步/109學年度/110-1_Quantitative_Methods_For_Decision_Making/Week9/mostVideos")
#list.files(path=".", full.names = F)
#load(file=paste0(getwd(),"/homework-R08943016.RData"))


## My homewwork
filenames <- list.files(path="../../Week7/QMDM-2021-11-05/", full.names = F)

aa <- as.data.frame(filenames)
#aa[[1]]
a1 <- str_locate(aa[[1]], "Marin")
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2021")

#str_sub(aa[[1]], a1[,2]+1, a2[,1]-1)
#str_sub(aa[[1]], a2[,2]+1, a3[,1]-1)
#str_sub(aa[[1]], a3[,2]+1, a4[,1]-1)

homework_my <- data.frame( Name=str_sub(aa[[1]], a3[,2]+1, a4[,1]-1), From=str_sub(aa[[1]], a1[,2]+1, a2[,1]-1), To=str_sub(aa[[1]], a2[,2]+1, a3[,1]-1) )
#homework_my

max(homework_my[[1]])


max(homework_my[[3]])
which.max(homework_my[[3]])
homework_my[which.max(homework_my[[3]]),1]
