getwd()

library(stringr)

filenames <- list.files("/Users/drun9/Documents/QMDM-2021-11-05")

aa <- as.data.frame(filenames)
aa[[1]]
a1 <- str_locate(aa[[1]], "Marin")
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2021")

str_sub(aa[[1]], a1[,2]+1, a2[,1]-1)
str_sub(aa[[1]], a2[,2]+1, a3[,1]-1)
str_sub(aa[[1]], a3[,2]+11, a4[,1]-1)

StartChap<-str_sub(aa[[1]],a1[,2]+1,a2[,1]-1)
StartChap
EndChap<-str_sub(aa[[1]],a2[,2]+1,a3[,1]-1)
Names<-str_sub(aa[[1]],a3[,2]+11,a4[,1]-1)

homework<-data.frame(Name=Names,From=StartChap,To=EndChap)
View(homework)

save(homework,file="/Users/drun9/Documents/homework-B08704021-20211105.RData")

#找觀看最多的同學
as.numeric(homework['To'][[1]])
Marin <- as.numeric(homework['To'][[1]])
which.max(Marin)
Theone <- which.max(Marin)

EndChap[which.max(Marin)]
Names[which.max(Marin)]

save(homework, file="/Users/drun9/Documents/homework-B08704021-20211119.RData")

