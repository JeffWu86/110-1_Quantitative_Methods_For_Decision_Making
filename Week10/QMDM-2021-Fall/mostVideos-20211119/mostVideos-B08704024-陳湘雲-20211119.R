fileNames <- list.files("QMDM-2021-11-05",full.names=F)
fileNames
Sys.setlocale(locale="Chinese (Traditional)_Taiwan")
Sys.setlocale(locale="English_United States")
aa <-as.data.frame(fileNames)
aa <-data.frame(fileNames)
library(stringr)
str_sub(fileNames,6,8)
pp <- str_split(fileNames, c("n","o"))
pp[[2]]

bb <- write.table(fileNames)
dd <-data.frame(col1=ccc,col2=aaa,col3=bbb)
str_sub(ccc)

aaa <- str_sub(fileNames,6,8)
bbb <- str_sub(fileNames,11,14)
ccc <- str_sub(fileNames,15,24)
ddd <- str_sub(fileNames,26,28)
eee <- str_split(ccc,"-")
fff <- str_split(bbb,"-")
dd <-data.frame(Number=eee([[]],[1]),From=aaa,To=fff([[]],[1]))

#以下才是正確的

a1 <- str_locate(aa[[1]], "Marin")
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2021")

From <- str_sub(aa[[1]], a1[,2]+1,a2[,2]-2)
From
To <- str_sub(aa[[1]], a2[,2]+1,a3[,1]-1)
To
Name <-str_sub(aa[[1]], a3[,2]+11,a4[,1]-1)
Name
homework.RData <- data.frame(Name=Name,From=From,To=To)

attach(homework.RData)
as.numeric(From)
as.numeric(To)
max(To-From)

#還是錯誤的
apply(X=homework.RData,MARGIN=2,FUN=max)

homework1=homework.RData
homework2=homework
conResult1=c(as.matrix(homework1))
conResult2=c(as.matrix(homework2))
compResult=conResult1==conResult2
compResult
which(!compResult)
#which是找出True
#!是讓T、F互換

QQ<-homework1==homework2
QQ
#但資料筆數要相同才能使用

WW=identical(homework1,homework2)
WW

yy=order(homework1[,2],decreasing=T)
newHomework1=homework1[yy,]
newHomework1=homework1[]