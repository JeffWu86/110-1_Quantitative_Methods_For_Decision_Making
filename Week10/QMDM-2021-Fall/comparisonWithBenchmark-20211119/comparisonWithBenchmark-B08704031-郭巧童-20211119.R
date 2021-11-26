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


library(stringr)
max(To)
str_locate(homework[[3]],"2.1")
str_sub(homework[36:37,1],1,3)


##################################################################




# [,1] start (all the column)
# [,2] end (all the column)



View(homework)

#################################################################



list.files(path = "~/Desktop/110-1/學習/數量方法與分析決策/homework-R08943016.RData", pattern = NULL, all.files = FALSE,
           full.names = FALSE, recursive = FALSE,
           ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

fileNamesBench <- list.files(path = "~/Desktop/110-1/學習/數量方法與分析決策/homework-R08943016.RData", pattern = NULL, all.files = FALSE,
                        full.names = FALSE, recursive = FALSE,
                        ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

bb <- as.data.frame(fileNamesBench)
View(bb)

View(fileNamesBench)




###################################################################################
# Comparing 2 data frames


homework1 <- homeWork
homework2 <- homework
conResult1 <- c(as.matrix(homework1))
conResult2 <- c(as.matrix(homework2))

conResult1
conResult2



# 1
compareResult <- conResult1=conResult2

# 2
which(!compareResult)
which(!(conResult1==conResult2))

# 3
qq <- conResult1==conResult2

# 4
ww <- identical(homework1, homework2)

# Order part

yy <- order(homework[,2], decreasing=T)
newHomework1 <- homework1[yy, ]



