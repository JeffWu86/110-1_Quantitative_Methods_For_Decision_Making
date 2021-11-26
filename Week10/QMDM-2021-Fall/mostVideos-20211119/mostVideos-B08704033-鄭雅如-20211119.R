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