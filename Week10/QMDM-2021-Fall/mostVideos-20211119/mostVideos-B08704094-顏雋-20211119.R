library(stringr)

fileNames <- list.files("C:/Users/USER/Desktop/NTU/110-1/QMDM/RCodes/QMDM-2021-11-05", full.names=FALSE)
aa <- as.data.frame(fileNames)
str_sub(aa[,1],26,28)

aa[[1]]
a <- str_locate(aa[[1]], "Marin")
b <- str_locate(aa[[1]], "To")
c <- str_locate(aa[[1]], "-")
d <- str_locate(aa[[1]], "-2021")

str_sub(aa[[1]], a[,2]+1, b[,1]-1)
str_sub(aa[[1]], b[,2]+1, c[,1]-1)
str_sub(aa[[1]], c[,2]+1, d[,1]-1)

hw <- data.frame(Name=str_sub(aa[[1]], c[,2]+1, d[,1]-1), From=str_sub(aa[[1]], a[,2]+1, b[,1]-1), To=str_sub(aa[[1]], b[,2]+1, c[,1]-1))
save(hw, file= "homework-B08704094-20211105.RData")

maximum <- max(hw$To)
maximum
hw[(which.max(str_sub(hw$To))),1]