homework1 <- homework
homework2 <- homework

homework2[1,2] <- "1.2"

conResult1 <- c(as.matrix(homework1))

conResult2 <- c(as.matrix(homework2))
c = setdiff(conResult1,conResult2)

View(homework1)
View(homework2)

compResult <- conResult1 == conResult2
compResult
which(!conResult1 == conResult2)

tt <- homework1 == homework2
tt

ii <- identical(homework1, homework2)
ii

yy <- order(homework1[,2],decreasing = TRUE)

newHomework1 <- homework1[yy,]
newHomework1 <- homework1[order(homework1[,2]),]