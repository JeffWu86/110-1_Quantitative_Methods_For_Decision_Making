homework1 <- homeWork
homework2 <- homework
conResult1 <- c(as.matrix(homework1))
conResult2 <- c(as.matrix(homework2))

conResult1
conResult2


compareResult <- conResult1=conResult2


which(!compareResult)
which(!(conResult1==conResult2))


qq <- conResult1==conResult2

ww <- identical(homework1, homework2)



yy <- order(homework[,2], decreasing=T)
newHomework1 <- homework1[yy, ]
