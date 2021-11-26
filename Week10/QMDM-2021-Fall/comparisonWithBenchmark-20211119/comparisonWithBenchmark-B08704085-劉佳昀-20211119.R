fileNames <- list.files("C:\\Users\\user\\Desktop\\數量方法與決策分析\\QMDM-2021-11-05-benchmark")

Note <- as.data.frame(fileNames)
#View(Note)

#install.packages()
library(stringr)
Note[[1]]
strMarin <- str_locate(Note[[1]], "Marin")
strTo <- str_locate(Note[[1]], "To")
strDash <- str_locate(Note[[1]], "-")
strDate <- str_locate(Note[[1]], "-2021")

a1 <- str_sub(Note[[1]], strMarin[,2]+1, strTo[,1]-1)
a2 <- str_sub(Note[[1]], strTo[,2]+1, strDash[,1]-1)
a3 <- str_sub(Note[[1]], strDash[,2]+1, strDate[,1]-1)
my_homework <- data.frame(Name=a3, From=a1,To=a2)
my_homework

maxVideo <- my_homework[which.max(my_homework$To), "Name"]
#save(maxVideo,my_homework, file=paste0(getwd(),"/homework-B08704085-20211119.RData"))

maxVideo

# 比較兩者
load("C:/Users/user/Desktop/數量方法與決策分析/code/benchmark/homework-R08943016.RData")
homework_r08 <- homework
homework_r08[1,2] <- 1.2

conResult1 <- c(as.matrix(homework_r08))
conResultmy <- c(as.matrix(my_homework))

conResult1 == conResultmy
# View(my_homework)

comResult <- conResult1 == conResultmy

which(!comResult)

# 比較是否相同
identical(my_homework, homework_r08)

yy <- order(homework[,2], decreasing = T)
newHomework1 <- homework1[yy,] 
newHomework2 <- homework[order]