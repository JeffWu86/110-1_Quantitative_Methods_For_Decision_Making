
list.files("/Users/nina/QMDM-2021-11-05")

filenames <- list.files("/Users/nina/QMDM-2021-11-05")

library(stringr)

kk <- as.data.frame(filenames)
kk[[1]]
k1 <- str_locate(kk[[1]], "Marin")
k2 <- str_locate(kk[[1]], "To")
k3 <- str_locate(kk[[1]], "-")
k4 <- str_locate(kk[[1]], "-2021")


str_sub(kk[[1]], k1[,2]+1, k2[,1]-1)
str_sub(kk[[1]], k2[,2]+1, k3[,1]-1)
str_sub(kk[[1]], k3[,2]+11, k4[,1]-1)



StartChap <- str_sub(kk[[1]], k1[,2]+1, k2[,1]-1)
EndChap <- str_sub(kk[[1]], k2[,2]+1, k3[,1]-1)
Names <- str_sub(kk[[1]], k3[,2]+1, k4[,1]-1)


myhomework <- data.frame(Name=Names, From=StartChap, To=EndChap)

View(myhomework)

save(myhomework, file="/Users/nina/homework-B08704032-20211105.RData")



#My Homework 
homework['To'][[1]]

as.numeric(homework['To'][[1]])
Com <- as.numeric(homework['To'][[1]])
which.max(Com).max
idx <- which.max(Com)
Names[idx]
EndChap[idx]

save(homework, file="/Users/nina/comparisonWithBenchmark-B08704032-20211119.RData")


###

homeworkaa<-myhomework
homeworkbb<-homework
homeworkbb[1,2]<-"1.2"
conResult1<-c(as.matrix(homeworkaa))
conResult2<-c(as.matrix(homeworkbb))

identical(conResult1,conResult2)
all.equal(conResult1,conResult2)

qq<-conResult1==conResult2
qq

which(!qq)

save(homework, file="/Users/nina/comparisonWithBenchmark-B08704032-20211119.R")