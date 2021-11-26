load("C:/Users/Erika/Downloads/Quantitative Analysis/homework-R08943016.RData")
load("C:/Users/Erika/Downloads/Quantitative Analysis/MYhomework-B08704053.RData")
homework1 = homework
homework2 = MYhomework
homework2[1,2]="1,2"
conResult1 = c(as.matrix(homework1))
conResult2 = c(as.matrix(homework2))
compResult = conResult1 == conResult2
compResult <- c(conResult1 == conResult2)
compResult
which(!(conResult1 == conResult2))

qq=homework1 == homework2

qq

ww = identical(homework1, homework2)
ww

yy = order(homework1[,2],decreasing=T)
newHomework1 = homework1[yy,]

newHomework1 = homework1[order(homework1[,2]),]

newHomework2 = homework2[order(homework2[,2]),]

if(identical(homework1, homework2)== T){
  print("資料與benchmark同樣")
} else {
  print("資料與benchmark不一樣")
}
