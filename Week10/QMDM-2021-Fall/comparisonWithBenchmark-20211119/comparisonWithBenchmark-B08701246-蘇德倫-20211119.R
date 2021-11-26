homework2[1,2]<-"1.2"

conResult1<-c(as.matrix(homework1))
conResult2<-c(as.matrix(homework2))
#conResult2[40]<-"1.2"
comparison<-cbind(conResult1,conResult2)
same<-conResult1==conResult2
Comparison<-cbind(comparison,same)
subset(Comparison,same!=TRUE)

homework2[1,2]<-"1.2"
qq<-homework1==homework2
qq

ww<-identical(homework1,homework2)
ww