View(homework)

conresult1 <- c(as.matrix(homework1))
conresult2 <- c(as.matrix(homework))

View(conresult1)
setdiff(conresult1,conresult2)
COMPRESULT <- conresult1==conresult2
homework==homework1
identical(homework,homework1)

yy <- order(homework1[,2], decreasing=T)



