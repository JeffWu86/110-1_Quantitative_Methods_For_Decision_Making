library(stringr)

filenames <- list.files(path="./QMDM-2021-11-05/", full.names = F)

aa <- as.data.frame(filenames)
aa[[1]]
a1 <- str_locate(aa[[1]], "Marin")
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2021")

str_sub(aa[[1]], a1[,2]+1, a2[,1]-1)
str_sub(aa[[1]], a2[,2]+1, a3[,1]-1)
str_sub(aa[[1]], a3[,2]+1, a4[,1]-1)

homework1 <- data.frame( Name=str_sub(aa[[1]], a3[,2]+1, a4[,1]-1), From=str_sub(aa[[1]], a1[,2]+1, a2[,1]-1), To=str_sub(aa[[1]], a2[,2]+1, a3[,1]-1) )


#################################################
library(stringr)

ff <- list.files(path="./QMDM-2021-11-05/", full.names = F)
aa <- as.data.frame(ff)

a1 <- str_locate(aa[[1]], "Marin")
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2021")

cc <- str_sub(aa[[1]], a1[ ,2]+1, a2[ ,1]-1)

dd <- str_sub(aa[[1]], a2[ ,2]+1, a3[ ,1]-1)

ee <- str_sub(aa[[1]], a3[ ,2]+1, a4[ ,1]-1)

homework2 <- data.frame(
  Name=ee,
  From=cc,
  To=dd)

###############################################
conResult1 <- c(as.matrix(homework1))
conResult2 <- c(as.matrix(homework2))

compResult <- conResult1 == conResult2

which(!compResult)
which(!(conResult1 == conResult2))

###############################################

qq <- homework1 == homework2

ww <- identical(homework1,homework2)

###############################################排序

yy <- order(homework1[,2],decreasing=T)

newHomework1 <- homework1[yy, ]

###############################################

newHomework1 <- homework1[order(homework1[,2],decreasing=T), ]

###############################################

#setdiff(conResult1,conResult2)
#setequal(conResult1,conResult2)
