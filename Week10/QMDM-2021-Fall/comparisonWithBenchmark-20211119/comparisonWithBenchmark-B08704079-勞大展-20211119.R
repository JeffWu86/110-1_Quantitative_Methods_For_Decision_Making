homework1 <- data.frame(Name = str_sub(aa[[1]], a3[,2]+1, a4[,1]-1),From = str_sub(aa[[1]], a1[,2]+1, a2[,1]-1), To = str_sub(aa[[1]], a2[,2]+1, a3[,1]-1))
homework2 <- homework

conResult1 <- c(as.matrix(homework1))
conResult2 <- c(as.matrix(homework2))

compresult <- conResult1 == conResult2
!compresult

which(!compresult)

qq <- homework1 == homework2

ww <- identical(homework1, homework2)
ww

yy <- order(homework1[,2], decreasing = T)
yy
newhomework1 <- homework1[order(homework1[,2]), ]

newhomework1 