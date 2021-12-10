

homework1 <- homework

homework2 <- homework

homework2[1,2] <- "1.2"

conResult1 <- c(as.matrix(homework1))

conResult2 <- c(as.matrix(homework2))

compResult <- conResult1 == conResult2

which(!(conResult1 == conResult2))



qq <- homework1 == homework2

qq


ww <- identical(homework1, homework2)
ww



yy <- order(homework1[,2], decreasing=T)
newHomework1 <- homework1[yy,]

newHomework1 <- homework1[order(homework1[,2]),]







