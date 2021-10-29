

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


