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

# 找出最多影片者
maxVideo <- my_homework[which.max(my_homework$To), "Name"]
#save(maxVideo,my_homework, file=paste0(getwd(),"/homework-B08704085-20211119.RData"))

maxVideo
