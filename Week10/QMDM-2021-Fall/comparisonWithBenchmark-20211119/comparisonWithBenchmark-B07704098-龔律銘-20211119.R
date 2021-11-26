aa <- as.data.frame(filenames)
aa[[1]]
a1 <- str_locate(aa[[1]], "r")
a2 <- str_locate(aa[[1]], "o")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2")

str_sub(aa[[1]], a1[,2]+3, a2[,1]-2)
str_sub(aa[[1]], a2[,2]+1, a3[,1]-1)
str_sub(aa[[1]], a3[,2]+1, a4[,1]-1)

myhomework <- data.frame( Name=str_sub(aa[[1]], a3[,2]+1, a4[,1]-1), From=str_sub(aa[[1]], a1[,2]+3, a2[,1]-2), To=str_sub(aa[[1]], a2[,2]+1, a3[,1]-1) )
homework

save(homework, file=paste0(getwd(),"/homework-B07704098.RData"))

Result1 <- c(as.matrix(myhomework))
Result2 <- c(as.matrix(homework))
ff <- homework1 == homework2
ff
ww <- identical(homework1, homework2)
ww
which(!ff)
which(!(homework1 == homework2))
class(Result1)

yy <- order(homework[,2], decreasing=T)
yy 
newhomwork1 <- homework[yy,]
newhomwork1 <- homework[order(homework[,2]),]



