
我的homework1 <- homework2
他的homework2 <- homework
conResult1 <- c(as.matrix(homework1))
conResult2 <- c(as.matrix(homework2))

comResult <- conResult1==conResult2

which(!comResult)
!-> T<->F
&-> and
|-> or

yy<-order(homework2[,2],decreasing=T)
newhomework2<-homework2[yy,]



