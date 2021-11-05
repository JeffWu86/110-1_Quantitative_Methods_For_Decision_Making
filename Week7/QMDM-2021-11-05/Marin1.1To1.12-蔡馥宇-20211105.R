matrixOne <- matrix(1:100, nrow=10, ncol=10, byrow=FALSE)

matrixOne

?matrix # help(matrix) is an alternative

matrixSub <- matrixOne[7:8,3:5]

matrixSub

matrixMinus <- matrixOne[-(7:8),]
matrixMinus

matrixMinus <- matrixOne[-(7:8),4:8]
matrixMinus

length(matrixMinus)
class(matrixMinus)

matrixMinus[2,3] <- "try"
matrixMinus
class(matrixMinus)
class(matrixMinus[1,2])

####################################################################

aa = data.frame(nickname=c("John","Mary","Leo"), weight=60:62, Height=c(160,170,180))
# 每一行都是一個變數，nickname是第一個變數
# 每一個row都稱為一個observation (john的資料是一個observation)

aa

# each element are called "item"
# 要找list中的item要用兩個中括號
dd

ee <- list(c("qwe","asd"),590,"zzz")
# list中的每個item可以為不同的向量，不像矩陣一樣需要固定幾乘幾
ee

ff <- list(dd,ee,c(1,2,3))
ff

ff[[2]][[1]][2]

ff[[2]][[1]][2] <- 50
# 為了和前面的字串保持一致，所以50變成字串


for (i in -3:7) {
  print(i^2)
}
ㄗ# 大括號要對齊for
# 小括號裏面的條件成立時，大括號的指令就會執行，等到大括號的執行完後，就會在跳到
aaa <- c(1,8,10)
bbb <- "try"
ccc <- data.frame(col1=c(12,34),col2=c(56,78))
ddd <- list(aaa,bbb,ccc) 
# list 彈性很大，不同的資料型態都可以使用
eee <- list(ddd,aaa)

library(stringr)
kk <- "abcdefgheijk"
pp <- str_split(kk, "e")
# pp is a list 

kk <- "abcdefgheijk"
pp <- str_split(kk, "de")

pp <- str_split(kk, c("d", "h"))
# 會先用d分一次，在用h分一次，最後變成一個list，有兩個向量

pp <- str_split(kk,"d|h")
# 看到d跟h都切

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


save.image("testtttt11.Rdata")

q()

# 會詢問你要不要儲存現在的作業到wd


