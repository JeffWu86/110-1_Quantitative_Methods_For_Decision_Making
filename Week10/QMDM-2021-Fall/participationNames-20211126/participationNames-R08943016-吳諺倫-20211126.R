# R08943016

rm(list = ls()) # Remove all the variables
library(stringr)
Sys.setlocale(locale="Chinese")
#list.files(path=getwd(), full.names = F)

#paste0(getwd(), "/QMDM-2021-11-05")
#list.files(path=paste0(getwd(), "/QMDM-2021-11-05/"), full.names = F)

setwd("C:/Users/Jeff/Google 雲端硬碟/同步/109學年度/110-1_Quantitative_Methods_For_Decision_Making/Week10")
#list.files(path=".", full.names = F)

foldernames <- list.files(path="./QMDM-2021-Fall/", full.names = F)
filenames1 <- list.files(path=paste0(getwd(), "./QMDM-2021-Fall/", foldernames[1]), full.names = F)

aa <- as.data.frame(filenames1)
aa[[1]]
a1 <- str_locate(aa[[1]], "mark-")
a2 <- str_locate(aa[[1]], "-2021")

l1 <- str_sub(aa[[1]], a1[,2]+11, a2[,1]-1)


filenames2 <- list.files(path=paste0(getwd(), "./QMDM-2021-Fall/", foldernames[2]), full.names = F)

bb <- as.data.frame(filenames2)
bb[[1]]
b1 <- str_locate(bb[[1]], "mary-")
b2 <- str_locate(bb[[1]], "-20")

l2 <- str_sub(bb[[1]], b1[,2]+11, b2[,1]-1)
#l2 <- na.omit(l2)

filenames3 <- list.files(path=paste0(getwd(), "./QMDM-2021-Fall/", foldernames[3]), full.names = F)

cc <- as.data.frame(filenames3)
cc[[1]]
c1 <- str_locate(bb[[1]], "deos-")
c2 <- str_locate(bb[[1]], "-2021")

l3 <- str_sub(aa[[1]], a1[,2]+11, a2[,1]-1)


finalResult <- data.frame("Names"=unique(c(l1,l2,l3)))

