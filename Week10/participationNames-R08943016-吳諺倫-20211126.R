# R08943016

rm(list = ls()) # Remove all the variables
library(stringr)
Sys.setlocale(locale="Chinese")

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
l1

filenames2 <- list.files(path=paste0(getwd(), "./QMDM-2021-Fall/", foldernames[2]), full.names = F)

bb <- as.data.frame(filenames2)
bb[[1]]
b1 <- str_locate(bb[[1]], "mary-")
b2 <- str_locate(bb[[1]], "-20")

l2 <- str_sub(bb[[1]], b1[,2]+11, b2[,1]-1)
l2

filenames3 <- list.files(path=paste0(getwd(), "./QMDM-2021-Fall/", foldernames[3]), full.names = F)

cc <- as.data.frame(filenames3)
cc[[1]]
c1 <- str_locate(cc[[1]], "deos-")
c2 <- str_locate(cc[[1]], "-2021")

l3 <- str_sub(cc[[1]], c1[,2]+11, c2[,1]-1)
l3

filenames4 <- list.files(path=paste0(getwd(), "./QMDM-2021-Fall/", foldernames[4]), full.names = F)

dd <- as.data.frame(filenames4)
dd[[1]]
d1 <- str_locate(dd[[1]], "ames-")
d2 <- str_locate(dd[[1]], "-2021")

l4 <- str_sub(dd[[1]], d1[,2]+11, d2[,1]-1)
l4

finalResult <- data.frame("Names"=unique(c(l1,l2,l3,l4)))

#s1 <- finalResult$Names %in% l1
#s2 <- finalResult$Names %in% l2
#s3 <- finalResult$Names %in% l3
#s4 <- finalResult$Names %in% l4

#submit <- data.frame("Names"=unique(c(l1,l2,l3,l4)), "sub1"=s1, "sub2"=s2, "sub3"=s3, "sub4"=s4)
finalResult$submit1 <-  ifelse(finalResult$Names %in% l1, 1, NA)
finalResult$submit2 <-  ifelse(finalResult$Names %in% l1, 1, NA)
finalResult$submit3 <-  ifelse(finalResult$Names %in% l1, 1, NA)
finalResult$submit4 <-  ifelse(finalResult$Names %in% l1, 1, NA)


