#Data frame的比對

homework2[1,2] <- "1.2"

conresult1 <- c(as.matrix(homework1))

conresult2 <- c(as.matrix(homework2))

comresult <- conresult1 == conresult2

comresult

which(!comresult)


homework1 == homework2





