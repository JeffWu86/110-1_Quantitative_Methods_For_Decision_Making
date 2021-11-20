# R08943016

library(stringr)
rm(list = ls())

("C:/Users/Jeff/Google 雲端硬碟/同步/109學年度/110-1_Quantitative_Methods_For_Decision_Making/Week9/comparisonWithBenchmark")
#list.files(path=".", full.names = F)
#load(file=paste0(getwd(),"/homework-R08943016.RData"))
load(file=paste0(getwd(),"/homework-B08704032-20211105.RData"))


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


# Compare homework_my with homework
load(file=paste0(getwd(),"/homework-B08704032-20211105.RData"))
homework_B08704032 <- homework
#homework == homework_my



load(file=paste0(getwd(),"/homework-R08943016.RData"))
homework_R08943016 <- homework

homework_my[1,2] <- "1.2"

conResult_my <- c(as.matrix(homework_my))
conResult_1 <- c(as.matrix(homework_R08943016))
conResult_2 <- c(as.matrix(homework_B08704032))
homework_my == homework_R08943016

identical(homework_my, homework_R08943016)

compare_1 <- conResult_my == conResult_1
compare_1
#conResult_my == conResult_2
which(!compare_1)

#for (i in c(1:dim(homework_my)[1])){
#  print(homework_my[i,] == homework_R08943016[i,])
#}

t1 = as.matrix(homework_my)


homework_my_with_new_order <- homework_my[order(homework_my[,2]),]
identical(homework_my, homework_my_with_new_order)

