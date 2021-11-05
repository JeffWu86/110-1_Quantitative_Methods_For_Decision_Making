data1 <- read.csv(file.choose(),header=T)
#make R know that the first row of our dataset are variable names or headers. 
#header=T tells R that the first row contains the names of the columns of the table.
#?Why sep=","--> csv 本來就是"separated by comma的簡寫。"

data1

data2 <- read.table(file.choose(), header = T, sep=",")

data3 <- read.delim(file.choose(), header=T)

#1.6

write.table(DataToExport, file="ExportedFileName.csv",row.names=F, sep = "," )
write.csv(DataToExport, file="ExportedFileName.csv",row.names=F)
# save the file in our current working directory, name it 
# "ExportedFileName", and save as a .CSV file format

?write.table()

getwd()
write.table(DDD, file = , row.names = F, sep=",")

write.table(DataToExport, file = "", row.names=F, sep= ",")
#1-1.4
#Q1 build a sequence that starts by 2,4,6.....to 12
#wrong: seq(from 2 to 12 by 2) lack the "="
seq(from=2, to=12, by=2)
rep(1, times=100)
rep("cc",times=12)
x <- seq(from=1, to=34 ,by=1/3)
x+0.3
y <- rep(1, time=102)
x+y

xx <- c(1,3,5)
yy <- 1:3
xx+yy

y[3]
y[-3]
#all elements except. 
y[c(1,5)]
y[1:3]
y <- rep(1, time=102)
y[y<0.5]

mat <- matrix(1:9, nrow = 3, byrow=T)
#W: matrix(1:9, byrow = 3, byrow=T)
matrix(c(1,2,3,4,5,6,7,8,9), nrow=2)

mat[1,2]
mat[c(1,2),3]
#get, mat[1,3],mat[2,3]
mat*10
mat[1,]
###################################################################
library(readxl)
LungCapData2 <- read_excel("C:/Users/maste/Downloads/LungCapData.xls", 
                          na = "***")
View(LungCapData2)

data1 <- read.csv(file.choose(), header=T)
data2 <- read.table(file.choose(), header=T, sep=" ")
data3 <- read.delim(file.choose(),header = T)
#header=T tells R that the first row contains the names of the columns of the table.
read.table(file.choose(), row.names = F,header=T )
write.table(,file = "", row.names = F, sep = ",")
write.table(D, file = , row.names = F, sep="\t")
rm(data1)
rm(data2)
#rm(data1, data2)
length()
dim()
#看多少column多少rows.
head()
tail()
#看最初和最後的幾行

LungCapData[c(5,6,7), ]
#看資料的567三列

LungCapData[-(4:722), ]
#"-"
write.table(DataToExport,file="", sep=",")

names(Lung...)
#check the variable names, 找到每一航數字的意思

mean(LungCapData$Age)
#找出資料中的某一欄。
# XX: age, Capital letters 
LungCapData$Age

attach(LungCapData)

Mean(Age)

Age

detach(LungCapData)

attach(LungCapData)

names(LungCapData)

class(Age)

levels(Smoke)
#Yes / No 資料的種類

summary(LungCapData)

x <- c(1,0,1,0)
x <- as.factor(x)

class(x)

summary(x)
#reports frequencies

mean(Age[Gender=="female"])
# == subsetting只算 the mean of the femlae==
#XXX mean[Age(Gender=="male") 
mean(Age[Gender=="female"])

MaleData <- LungCapData[Gender=="female"]

# X MaleData <- Age[Gender=="female"] 不用再說Age

dim(MaleData)
dim(FemData)
summary(Gender)

FemData[1:4, ]
MaleOver15 <- LungCapData[Gender=="Male"&Age>15, ]
#X male "male"
#X MaleOver15 <- LungCapData[Gender=="Male"&Age>15] 最後一行，後面沒有空格，他不知道要取哪幾行

dim(MaleOver15)
MaleOver15[1:4, ]

LungCapData <- read.table(file.choose(),header=T, sep="\t")
#打下file.choose後面的檔案位置。
attach(LungCapData)
names(LungCapData)
head(LungCapData)
#檢查二步驟names, head

temp <- Age>50
temp[1:5] 

temp2 <- as.numeric(Age>15)
temp2[1:4]

FemSmoke <- Gender=="Female"&Smoke=="Yes"
#X FemSmoke <- Age(Gender=="Female")&Smoking="Yes" Age不用，Smoke後面有兩個==
MoreData <- cbind(LungCapData, FemSmoke)
#cbind(LungCapData&FemSmoke)
#use the cbind and attach the FemSmoke to the entire dataset. 

rm(list=ls())


#1.11



setwd(C:Users/maste/Documents/R/管數)
setwd("Users/maste/Documents/R/管數")
setwd("~/Documents/R/管數")

projectWD <-setwd(C:Users/maste/Documents/R/管數)
setwd(projectWD)

rm(lst=ls())
q()

ls()
setwd("~/Documents/R/管數")
getwd()
load("FirstProject.RData")

