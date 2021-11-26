# 跟benchmark比較的作業
homework1 <- homework
homework2 <- HOMEWORK
homework[1,2] <- '1,2'
conResult1 <- c(as.matrix(homework1))
conResult2 <- c(as.matrix(homework2))

compResult <- conResult1 == conResult2
ww <- identical(homework1, homework2)
ww

newhomework1 <- homework1[order(homework1[,2], decreasing = T),]
newhomework1
