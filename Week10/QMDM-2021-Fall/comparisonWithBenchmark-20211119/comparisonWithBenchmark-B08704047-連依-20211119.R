# 用identical比較
conResult1 <- c(as.matrix(homework))
conResult2 <- c(as.matrix(Homework))

Compare1 <- c(conResult1 == conResult2)
identical(conResult1, conResult2)

if (identical(conResult1, conResult2) == T){
  print("兩個資料一樣")
}else{
  print("兩個資料不一樣")
}


#用迴圈比較
#HomeworkCompare <- as.data.frame

#for(j in 1:43){
  #for(i in 1:3){
   # if (Homework[j,i] == homework[j,i]){
    #  print("不一樣")
     # which(Homework[j,i] == "不一樣")
  #  }else{
   #   print("一樣")
  #  }
#  }}

#用老師的方式比較兩資料
conResult1 <- c(as.matrix(Homework))
conResult2 <- c(as.matrix(homework))

Compare1 <- c(conResult1 == conResult2)
Compare1

#找出不一樣的地方在哪
which(!(conResult1 == conResult2))

#用identical的方式確認兩資料是否依樣
ww <- identical(conResult1, conResult2)
ww

#將homework排列順序從from的最高到最低
yy <- order(homework[,2], decreasing=T)
newHomework <- homework[yy,]
