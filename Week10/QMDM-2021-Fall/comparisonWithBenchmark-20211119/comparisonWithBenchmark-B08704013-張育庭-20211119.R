library(stringr)
getwd()
filenames<-list.files("QMDM-2021-11-05", full.names=F)
bb<-as.data.frame(filenames)
bb
cc<-str_locate(bb[[1]],"Marin")
dd<-str_locate(bb[[1]], "To")
ee<-str_locate(bb[[1]], "-")
ff<-str_locate(bb[[1]],"2021")

str_sub(bb[[1]], cc[ ,2]+1, dd[ ,1]-1)
str_sub(bb[[1]], dd[ ,2]+1,ee[ ,1]-1)
str_sub(bb[[1]],ee[ ,2]+11,ff[, 1]-1)

myhomework<-data.frame(
  name=str_sub(bb[[1]],ee[ ,2]+11,ff[,1]-2),
  From=str_sub(bb[[1]],cc[,2]+1, dd[,1]-1), 
  To=str_sub(bb[[1]],dd[,2]+1,ee[,1]-1))
myhomework

homework1<-myhomework
homework2<-homework
result1<-c(as.matrix(homework1))
result2<-c(as.matrix(homework2))
result1 
result2
result<-result1==result2
result
which(!result)
a<-order(homework[,2], decreasing = T)
newhw<-homework[a,]
newhw<-homework[order(homework[,2]),]
newhw

save.image("homework-B08704013-20211105.Rdata")
