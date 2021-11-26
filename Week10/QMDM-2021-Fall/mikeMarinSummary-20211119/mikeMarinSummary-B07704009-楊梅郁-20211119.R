### Video Note of MarinStatsLecture
### Video links: https://www.youtube.com/watch?v=UYclmg1_KLk&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=3
### Last edited: 2021//11/12

##############################################
#  video1.3                                  #
#  content factors and calculation           #
##############################################


rm(list=ls(all=T)) # 刪除所有變數

#part 1：name the factor / print / ls / rm
x = 11
x.1 = 14      #name the factor started with x,y,z but not number 
y <- 12

ls()          #show all the factors
rm(y)         #remove certain factors

#part 2：arithmetic四則運算

#sqrt(y) = y^(1/2)
#log()以e為底; exp()以e為底

y=3
log(y)
exp(y) #以e為底的指數

log10(y) #要改變底數在log後加上數字
log2(y)

abs() #絕對值
abs(14)


##############################################
#  video1.4                                  #
#  content c() concatenate and make vatrix   #
##############################################

# part 1 : basic set-up
x1 = c(1,3,5,7,8)
gender = c("male", "female")

# part 2 ： advanced function seq / rep
seq(from = 1, to = 7, by =1) # 從1到7用1去切
seq(from = 1, to = 7, by =0.5)

rep(1, times = 10)
rep("martin", times = 5)

rep(seq(from=2 , to = 4, by= 1), times = 3)

x = 1:5 # create a concatenate systematically
x
y = c(1,2,3,4,5)
y

x + 10 #現在x是一個vector，+10會把每個分量+10
x / 2  #同理可以改到加減乘除

## if two vectors are of the same length, we may + - * / 

# part 3：查找c()內物件
y = 1:5
y
y[3]
y[1:3] # 查y這個c()中的第一到第三個物件
y[c(1,5)] #查找第1第5個物件，不可以用y[1,5]
y[y<2] #查找y所有物件中小於2的物件

# part 4：二維matrix
matrix(c(1:9), nrow = 3 , byrow = TRUE ) #按行分配
mat1112 = matrix(c(1:9), nrow = 3 , byrow = FALSE )

mat1112
mat1112[1,2] #找該矩陣的第一行第二列
mat1112[c(1,3),2] #找該矩陣的第1,2,3行的第二列
mat1112[2,] #找該矩陣的第二行的所有物件
mat1112[,1] #找該矩陣的第一列的所有物件

##############################################
#  video1.5                                  #
#  content： importing data from EXCEL to R  #
##############################################


#讀取儲存成csv的檔案
LungCapData  = read.csv(file.choose(), header = T) #header有沒有表頭
LungCapData
data2 = read.table(file.choose(), header = T, sep = ",") #sep資料用什麼分
data2

#讀取儲存成txt的檔案
data3 = read.delim(file.choose(), header = T)
data4 = read.table(file.choose(), header = T, sep = "/t")

#直接讀取.xlsx / .xlxs的excel用 File - Import dataset - from excel
#data name will be the same as file name, and you may change it
#skip: set it 2, we'll skip 2 rows
#N/A for missing value
#type in the sign you made on excel, R will take the bo of that sign as missing value

##me having .xlsx無法讀取的問題utf-8

#each column: click on the rec. next to ech column name


names(LungCapData)
mean(LungCapData$Age) #but not mean(Age)

########################
#LungCapData$Age
 #mean(Age) #Age will be a factor
names(LungCapData)
#reverse:detach(LungCapData)
#levels(Smoke)
#levels(Gender)

#summary(LungCapData)

x = c(0,1,1,1,0,0,0,0,0)

class(x)
summary(x) #show number calculation

x <- as.factor(x) #change X into factor; let 1,0 be yes or no
summary(x) #show frequency


dim(LungCapData) #dimension of your data
Age[11:14]
LungCapData[11:14, ]

MaleOver15 <- LungCapData[Gender == "male" & Age > 14, ]
# add condition in the []


##############################################
#  video1.6                                  #
#  content： exporting data from EXCEL to R  #
##############################################

write.table(DataToExport, file = "ExportedFileName.csv", row.names = F , sep=",")

#用, sep的都是csv

# we can use the write.table command to export data, to many formats
?write.table

# save the file in our "current" working directory, name it 
# "ExportedFileName", and save as a .CSV file format
write.table(DataToExport, file="ExportedFileName.csv", sep=",")

# export without row names by setting the "row.names=FALSE"
# also note, that this will over-write the previous file
write.table(DataToExport, file="ExportedFileName.csv", row.names=F, sep=",")

# specify the path for where to save the file instead
write.table(DataToExport, 
            file="/Users/OldMarin/TEACHING/FolderToSaveIn/ExportedFileName.csv",
            row.names=F, sep=",")

# write.csv does the same, just dont need to specify sep=","
write.csv(DataToExport, 
          file="/Users/OldMarin/TEACHING/FolderToSaveIn/ExportedFileName.csv", 
          row.names=F)

# save as tab-delim txt file, setting sep="\t" and file extension to .txt
write.table(DataToExport, 
            file="/Users/OldMarin/TEACHING/FolderToSaveIn/ExportedFileName.txt", 
            row.names=F, sep="\t")

# or, save it as space-delimited by setting sep=" "
write.table(DataToExport, 
            file="/Users/OldMarin/TEACHING/FolderToSaveIn/ExportedFileNameSpace", 
            row.names=F, sep=" ")


##############################################
#  video1.7/ 1.8                             #
#  content： working with data               #
##############################################
rm(list=ls(all=T)) # 刪除所有變數

Data1 = read.table(file.choose(), header = T, sep = ",")
Data1
View(Data1)

head(Data1) #tail() to view the first 6 or the last 6 datas

dim(Data1)
Data1[5:9,]
Data1[-(4:722),] #前面加上負號代表要剔除

names(Data1)
attach(Data1) #把names變成factors
detach(Data1)
attach(Data1)
mean(Age)
Age
Data1$Age

class(Height)
Height = as.numeric(Data1$Height)
Gender = as.factor(Data1$Gender)
## 無法attach()將所有的名字轉成factor

class(Gender)
levels(Gender)

class(Height)
levels(Height) #只有factor可以有levels

summary() #若中間是factor會顯示每種東西的frequncy 如果中間是數字會顯示平均等東西

##############################################
#  video1.10                                 #
#  content： working with data               #
##############################################
LungCapData  = read.csv(file.choose(), header = T) #header有沒有表頭
LungCapData
attach(LungCapData)
Age[1:5]

temp = Age>15
temp[1:5]

temp = as.numeric(Age > 15)
temp[1:5] #把T變成1

FemSmoke = Gender == "female" & Smoke == "yes"
FemSmoke

MoreData = cbind(LungCapData, FemSmoke)
MoreData[1:5,]

rm(list = ls()) #清除所有變數


##############################################
#  video1.11                                 #
#  content： current working diectory        #
##############################################

getwd()







