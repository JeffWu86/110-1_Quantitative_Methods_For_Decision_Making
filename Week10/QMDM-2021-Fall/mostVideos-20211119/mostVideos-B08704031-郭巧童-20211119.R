getwd()
list.files(path = "/Users/stephanie/Desktop/110-1/學習/數量方法與分析決策/QMDM", pattern = NULL, all.files = FALSE,
           full.names = FALSE, recursive = FALSE,
           ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

fileNames <- list.files(path = "/Users/stephanie/Desktop/110-1/學習/數量方法與分析決策/QMDM-2021-11-05", pattern = NULL, all.files = FALSE,
                        full.names = FALSE, recursive = FALSE,
                        ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

aa <- as.data.frame(fileNames)
View(aa)
library(stringr)
# 打開stringr函式前要用這個
install.packages("stringr")

##################################################################

data.frame(fileNames)
str_sub(aa[,1],16,18)
# 16,18開始～結束
# str_sub 提取字元
# [,1] 每一行

library(stringr)

aa[[1]]
pos1 <- str_locate(aa[[1]],"Marin")
pos2 <- str_locate(aa[[1]],"To")
pos3 <- str_locate(aa[[1]],"-")
pos4 <- str_locate(aa[[1]], "-2021")


Name= str_sub(aa[[1]],pos3[,2]+1, pos4[,1]-1)
From= str_sub(aa[[1]],pos1[,2]+1, pos2[,1]-2)
To=  str_sub(aa[[1]],pos2[,2]+1, pos3[,1]-1)

homework <- data.frame(Name= str_sub(aa[[1]],pos3[,2]+1, pos4[,1]-1),
                       From= str_sub(aa[[1]],pos1[,2]+1, pos2[,1]-1),
                       To=  str_sub(aa[[1]],pos2[,2]+1, pos3[,1]-1))



### 這次作業
library(stringr)
max(To)
str_locate(homework[[3]],"2.1")
str_sub(homework[36:37,1],1,3)