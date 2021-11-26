# "homework"是benchmark的檔案，我的是"FinalFrameOutput"
library(stringr)
load("homework-R08943016.RData")
load("homework-B08704076-20211105.RData")
benchmark <- c(as.matrix(homework))
mydataframe <- c(as.matrix(FinalFrameOutput))

compResult <- benchmark == mydataframe
compResult

diff <- which(!compResult) #找出TRUE，！會把TRUE/False顛倒
diff

# 另一種方法
directcomp <- homework == FinalFrameOutput
directcomp

#另另一種方法
iden <- identical(homework, FinalFrameOutput)#比對兩個物件是否完全一樣
iden

newHomework1 <- homework[order(homework[,2], decreasing=T), ]
# order 是用在dataframe排序，decreasing是排序方式為降冪