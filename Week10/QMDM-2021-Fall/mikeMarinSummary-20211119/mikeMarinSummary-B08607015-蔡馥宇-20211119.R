# 1.10~1.11 NOTE 

Age [1:5]

temp = Age > 15

temp[1:5]

# FALSE TRUE TRUE FALSE TRUE

temp2 = as.numeric(Age>15)

temp2[1:5]

# 0 1 1 0 0 

Femsmoke = Gender == "Female" & Smoke == "Yes"

# 找既抽煙也是女生的人

Femsmoke[1:5]

Moredata = cbind(Lumpcapdata, Femsmoke)

# 把剛剛的資料加進去，以column 的規則加進去

Moredata


rm(list=ls()) 

# remove所有的data 跟value，也可以用下拉選單

getwd()

# 找現在的wd

setwd()

# 設定wd

projectwd = "/Users/audreyoudeli/Documents/數量方法與決策分析"

z = summary(Lungcapdata)

# 會print出 min median mean 之類的


###################################
# 1.12 
# command + enter 可以run

homework

class(NAME)
class(FROM)

NAME

save.image("homework.Rdata")
# 儲存現在的workspace image

####################################

# 1.13 install packages

help(install.packages)

install.packages("epiR")

# 如果不知道要install什麼，打install.packages()
# r會自動顯示初所有可以下載的packages

install.packages()

library(epiR)

# 在r的官網中的cran，可以下載packages

help(package = "epiR")

# 想要看package使用方式跟詳細資料時使用

remove.packages("epiR")
# uninstall package

# 也可以按tools，裡面有下載package的地方

#########################################

# 1.14 customize r studio 

# 點tools -> options 可以設定

# pane layout可以設定版面想要排什麼樣子

#########################################

# 1.15 apply function

stock1 = c(185.74, 184.26, 162.21, 159.04, 164.87, 162.72, 157.89,159.49, 150.22, 151.02)
stock2 = c(1.47,1.56,1.39,1.43,1.42,1.36,NA,1.43,1.57,1.54)
stock3 = c(1605,1580,1490,1520,1550,1525,1495,1485,1470,1510)
stock4 = c(95.05,97.49,88.57,85.55,92.04,91.70,89.88,93.17,90.12,92.14)

StockData = data.frame(stock1, stock2, stock3, stock4)

row.names(StockData) <- c("Day1", "Day2", "Day3", "Day4", "Day5", "Day6", "Day7", "Day8", "Day9", "Day10") 

StockData

?apply

# 算mean
# na.rm = TRUE remove掉na值
# margin 1代表row 2代表colunm 
avg = apply(X=StockData, MARGIN = 2, FUN = mean, na.rm=TRUE)

avg
# 另一種寫法
colMeans(StockData, na.rm=TRUE)

# 計算每一欄中最大的值

apply(X=StockData, MARGIN=2, FUN = max, na.rm=TRUE)


# 計算0.2 0.8分位數

apply(X=StockData, MARGIN=2, FUN =quantile, probs=c(0.2, 0.8),na.rm=TRUE)

# 根據每一欄建立plot，type=l 代表用line畫

apply(X=StockData, MARGIN=2, FUN=plot, type="l")

# 把剛剛的圖片加上圖片名稱，以及xy軸的值

apply(X=StockData, MARGIN=2, FUN=plot, type="l", main="stock", ylab="Price", xlab="Day")

# 計算row的SUM，margin = 1

apply(X=StockData, MARGIN=1, FUN=sum, na.rm=TRUE)

# same as

rowSums(StockData, na.rm=TRUE)

# 把rowsum 做成plot，代表每日市價總和

plot(apply(X=StockData, MARGIN=1, FUN=sum, na.rm=TRUE), type="l", ylab="Total Market Value",xlab="Day", main="Market Trend")

# 把每日的資料設成點

points(apply(X=StockData, MARGIN=1, FUN=sum, na.rm=TRUE), pch=16, col="blue")

#######################################

# 1.16 tApply function 

LungCapData = read.csv(file="LungCapData.csv")

summary(LungCapData)

attach(LungCapData)

?tapply

# 計算mean age for smoker/nonsmoker
# X放入我們要計算的variable，index是我們要計算的子集
tapply(X=Age, INDEX = Smoke, FUN = mean, na.rm=TRUE)
# same as ，因為此資料中沒有na，所以可以省略
tapply(Age, Smoke, mean)

m = tapply(Age, Smoke, mean)
m

tapply(Age, Smoke, mean, simplify = FALSE)
# 會print出list

# 也可以用中括號來算，如下方：

mean(Age[Smoke=="no"])
mean(Age[Smoke=="yes"])

# 但tapply比較正式用法

tapply(Age, Smoke, summary)

# 計算有抽煙跟沒抽菸的人的age的資料

tapply(Age, Smoke, quantile, probs=c(0.2,0.8))

# 也可以用multiple factor 去切分

tapply(X=Age, INDEX = list(Smoke, Gender), FUN=mean, na.rm=T)

# same as

mean(Age[Smoke=="no" & Gender=="female"])
mean(Age[Smoke=="no" & Gender=="male"])
mean(Age[Smoke=="yes" & Gender=="female"])
mean(Age[Smoke=="yes" & Gender=="male"])

# by() 這個函式跟tapply有一樣的功用，但by() 回傳值會是vector format

by(Age, list(Smoke, Gender), mean, na.rm=T)


