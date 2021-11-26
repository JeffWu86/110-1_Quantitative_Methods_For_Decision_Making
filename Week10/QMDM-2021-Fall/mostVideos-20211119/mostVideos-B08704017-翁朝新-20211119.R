library(stringr)
filenames <- list.files(path = "D:/msi D/Brian/大三上作業報告/數量方法/QMDM-2021-11-05-20211105T014256Z-001/QMDM-2021-11-05",  full.names = FALSE)
aa <- as.data.frame(filenames)

aa[[1]]
a1 <- str_locate(aa[[1]], "Marin")  # 把Marin的起始位置和結束位置丟到a1
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2021")

ffrom <- str_sub(aa[[1]], a1[,2]+1, a2[,1]-1)  # 擷取aa[[1]]資料中起始位置和結束位置之間的資料
tto <- str_sub(aa[[1]], a2[,2]+1, a3[,1]-1)
nname <- str_sub(aa[[1]], a3[,2]+1, a4[,1]-1)

homework <- data.frame(Name = nname, From = ffrom, To = tto)
homework

summary(homework)

maxnum <- max(To)
maxrow <- grep(maxnum, To)
Name[maxrow]