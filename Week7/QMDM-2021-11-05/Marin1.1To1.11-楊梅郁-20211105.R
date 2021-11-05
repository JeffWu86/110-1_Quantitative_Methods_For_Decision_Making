# sqrt(y) = y^(1/2)
#
y=1
exp(y) #以e為底的指數
log2(y)


#讀取儲存成csv的檔案
data1 = read.csv(file.choose(), header = T) #header有沒有表頭
data2 = read.table(file.choose(), header = T, sep = ",") #sep資料用什麼分


#讀取儲存成txt的檔案
data3 = read.delim(file.choose(), header = T)
data4 = read.table(file.choose(), header = T, sep = "/t")

#直接讀取.xlx / .xlxs的excel用 File - Import dataset - from excel
#data name will be the same as file name, and you may change it
#skip: set it 2, we'll skip 2 rows
#N/A for missing value
#type in the sign you made on excel, R will take the bo of that sign as missing value

#each column: click on the rec. next to ech column name


#names(LungCapData)
#mean(LungCapData$Age) #but not mean(Age)

########################
#LungCapData$Age
#attach(LungCapData) ; mean(Age) #Age will be a factor
#names(LungCapData)
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






