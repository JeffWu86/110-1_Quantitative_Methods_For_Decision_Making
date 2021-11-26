load("C:/Users/gyoyo/Desktop/homework-R08943016.RData")
View(homework)


#對比兩個dataframe

homework1 <- myhomework
homework2 <- homework
homework2[1,2] <- "1.2"
conResult1 <- c(as.matrix(homework1))
conResult2 <- c(as.matrix(homework2))
compResult <- conResult1 == conResult2

c = setdiff(conResult1, conResult2)

#!をつけるとTRUEとFALSEが逆になる

which (!compResult)

identical(homework1, homework2)
homework1 == homework2


yy <- order(homework1[,2], decreasing = T)
newHomework1 <- homework1[yy,]
newHomework1 <- homework1[,2]
order(homework1[,3], decreasing = F)

newHomework2 <- homework2[order(homework1[,3], decreasing = F),]

