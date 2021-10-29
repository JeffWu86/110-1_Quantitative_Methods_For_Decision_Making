

load("./Code_Week_6_result_A.RData")
load("./Code_Week_6_result_C.RData")

Sys.getlocale()
Sys.setlocale("LC_ALL","English")


dim(resultA)

#install.packages("readxl")
library(readxl)
library(stringr)
RVideoSignUp <- read_xlsx("RVideoSignUp.xlsx")
aa <- RVideoSignUp[,2] == "毛子晴"
aa

resultA[1,1]
str_locate(resultA[1,1], "院")
str_locate(resultA[1,1], "院")[1]
str_sub(resultA[1,1], 1, str_locate(resultA[1,1], "院")[1])

str_split(resultA[1,1], "毓")[[1]][1]

getSubString <- function(i){
  return( str_sub(resultA[i,1], 1, str_locate(resultA[i,1], "院")[1]) )
}

subMat <- vector(mode="character", length=dim(resultA)[1])

for (i in c(1:dim(resultA)[1])) {
  subMat[i] <- getSubString(i)
}
subMat[1700:1800]
