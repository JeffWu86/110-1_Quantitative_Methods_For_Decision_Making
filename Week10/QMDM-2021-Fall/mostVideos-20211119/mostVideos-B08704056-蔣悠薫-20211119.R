library(stringr)

fileNames <- list.files(path = "C:/Users/gyoyo/Desktop/Manegerial Math/QMDM-2021-11-05", full.names=FALSE)

aa <- as.data.frame(fileNames)

str_sub(fileNames[5],16,17)


Sys.setlocale()
Sys.setlocale(locale="Chinese")

write.table

#Name From To

data.frame()

fileNames <- list.files(path = "C:/Users/gyoyo/Desktop/QMDM-2021-11-05", full.names=FALSE)
bb <- as.data.frame(fileNames)

a1 <- str_locate(bb[[1]], "Marin")
a2 <- str_locate(bb[[1]], "To")
a3 <- str_locate(bb[[1]], "-")
a4 <- str_locate(bb[[1]], "-2021")

str_sub(bb[[1]], a1[,2]+1, a2[,1]-1)
str_sub(bb[[1]], a2[,2]+1, a3[,1]-1)
str_sub(bb[[1]], a3[,2]+11, a4[,2]-5)

myhomework <- data.frame(Name=str_sub(bb[[1]], a3[,2]+11, a4[,2]-5), From=str_sub(bb[[1]], a1[,2]+1, a2[,1]-1), To=str_sub(bb[[1]], a2[,2]+1, a3[,1]-1))
myhomework

save(homework, file="homework-B08704056-20211105.RData")

myhomework[(which.max(str_sub(bb[[1]], a2[,2]+1, a3[,1]-1))),][1]
myhomework[grep(max(str_sub(bb[[1]], a2[,2]+1, a3[,1]-1)),myhomework$To),][1]
myhomework[(which.max(str_sub(bb[[1]], a2[,2]+1, a3[,1]-1))),1]
