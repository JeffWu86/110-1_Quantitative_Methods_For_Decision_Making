load('/Users/maomao/Documents/R learning/benhomework-.RData')
homework1 = homework
homework1
load('/Users/maomao/Documents/R learning/homework-R08943016拷貝.RData')
homework2 = homework
View(homework2)
View(homework1)
homework2[1,2]='1.2'
conResult1 = c(as.matrix(homework1))
conResult2 = c(as.matrix(homework2))
conResult1
conResult2
compResult = conResult1==conResult2
which(!compResult) #!是把T F 顛倒過來，which 可找TRUE在哪項
identical(homework1, homework2)

yy = order(homework1[,2],decreasing=T) #order可以排序
newHomework1 = homework1[yy,]
View(newHomework1)
