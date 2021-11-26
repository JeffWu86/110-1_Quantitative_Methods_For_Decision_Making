a <- load("~/Desktop/R/homework-B07704066-20211105.RData")
a
homework1 <- homework

b <- load("~/Desktop/R/homework-R08943016.RData")
b
homework2 <- homework

homework2[1,2] <- "1,2"

conResult1 <- c(as.matrix(homework1))
conResult2 <- c(as.matrix(homework2))

#找哪裡不一樣
setdiff(conResult1,conResult2)
#是不是一樣
setequal(conResult1,conResult2)

compResult <- conResult1 == conResult2
which(!compResult)
which(!(conResult1 == conResult2))


########################

