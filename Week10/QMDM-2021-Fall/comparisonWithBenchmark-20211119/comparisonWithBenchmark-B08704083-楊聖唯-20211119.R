homework1 <- homework
homeworkothers <- homework

homeworkothers[1,2] <- "1.2"

conResult1 <- c(as.matrix(homework1))

conResult2 <- c(as.matrix(homeworkothers))

compResult <- conResult1 == conResult2


which(!compResult) #which 定位出true的位置，加驚嘆號會讓true跟false相反

telldiff <- identical(homework1 , homeworkothers)

arrangehw <- order(homework1[,2],decreasing = T) # order 排序 decreasing 由大到小

newhomework1 <- homework1[arrangehw, ]

