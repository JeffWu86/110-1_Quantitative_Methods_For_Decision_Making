# R08943016

library(stringr)
#list.files(path=getwd(), full.names = F)

#paste0(getwd(), "/QMDM-2021-11-05")
#list.files(path=paste0(getwd(), "/QMDM-2021-11-05/"), full.names = F)

setwd("C:/Users/Jeff/Google 雲端硬碟/同步/109學年度/110-1_Quantitative_Methods_For_Decision_Making/Week7/")
#list.files(path=".", full.names = F)

filenames <- list.files(path="./QMDM-2021-11-05/", full.names = F)

aa <- as.data.frame(filenames)
aa[[1]]
a1 <- str_locate(aa[[1]], "Marin")
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2021")

str_sub(aa[[1]], a1[,2]+1, a2[,1]-1)
str_sub(aa[[1]], a2[,2]+1, a3[,1]-1)
str_sub(aa[[1]], a3[,2]+1, a4[,1]-1)
#Name From To 
homework <- data.frame( Name=str_sub(aa[[1]], a3[,2]+1, a4[,1]-1), From=str_sub(aa[[1]], a1[,2]+1, a2[,1]-1), To=str_sub(aa[[1]], a2[,2]+1, a3[,1]-1) )
homework


#save(homework, file=paste0(getwd(),"/homework-R08943016.RData"))

max(homework[[3]])
which.max(homework[[3]])
homework[which.max(homework[[3]]),1]

#str_split(aa[[1]][1], "Marin")
#str_split(str_split(aa[[1]][1], "To")[[1]], "Marin")
#str_split
#list.files(path=paste0(getwd(), "/QMDM-2021-11-05/"), full.names = F)


#Sys.setlocale("LC_ALL","English")
#Sys.setlocale(locale="Chinese (Traditional)_Taiwan.950")
#Sys.setlocale("LC_ALL","Chinese (Traditional)_Taiwan.950")
#write.table(DataToExport, file="./ExportedFileName.txt", row.names=F, sep="\t")

