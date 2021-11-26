getwd()
?save()


filenames= list.files("/Applications/R code/QMDM-2021-11-05", full.names=FALSE)

mm=as.data.frame(filenames)


library(stringr)
str_sub(mm[,1],16,18)
?str_sub
?list.files
?str_locate
str_locate(mm[,1],"-2021")
?as.data.frame
as.data.frame(mm[,1], row.names="Name", start=16, end=18)

View(mm)
mm[[1]]
m1=str_locate(mm[[1]],"Marin")
m2=str_locate(mm[[1]],"To")
m3=str_locate(mm[[1]],"-")
m4=str_locate(mm[[1]],"-2021")


From=str_sub(mm[[1]],m1[,2]+1,m2[,1]-1)
To=str_sub(mm[[1]],m2[,2]+1,m3[,1]-1)
Name=str_sub(mm[[1]],m3[,2]+1,m4[,1]-1)

homework= data.frame(Name=str_sub(mm[[1]],m3[,2]+1,m4[,1]-1), From=str_sub(mm[[1]],m1[,2]+1,m2[,1]-1),To=str_sub(mm[[1]],m2[,2]+1,m3[,1]-1))
View(homework)


save(homework,file=".Rdata")

homework:
max(homework$To)
Max=max(homework$To)
homework[(which.max(str_sub(homework$To))),1]

2021/11/19
# load之後就要先改名成homework1 or 2
conResult1=c(as.matrix(homework1))
conResult2=c(as.matrix(homework2))  

compResult= conResult1==conResult2
#which() 找True在第幾個分量(哪些分量是True)
# !compResult 會將True變成False，False變成True

# & and ，兩個都是T才會是T
# | or，只要有一個T就是T

#identical指令比對兩物件是否完全一樣
ww=identical(homework1,homework2)
ww

# 排序，True=從最大排到最小，R會把第幾列的列數排出來
yy=order(homework[,2],decreasing=T)
yy

newHomework1=homework[yy,]
View(newHomework1)

  