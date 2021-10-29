# Week 6

## Lecture

```R
# Make sure to change to the correct working directory
# Read file
> load("./Code_Week_6_result_A.RData")
> load("./Code_Week_6_result_C.RData")


# Change system languae to English
> Sys.getlocale()
[1] "LC_COLLATE=Chinese (Traditional)_Taiwan.950;LC_CTYPE=Chinese (Traditional)_Taiwan.950;LC_MONETARY=Chinese (Traditional)_Taiwan.950;LC_NUMERIC=C;LC_TIME=Chinese (Traditional)_Taiwan.950"
> Sys.setlocale("LC_ALL","English")
[1] "LC_COLLATE=English_United States.1252;LC_CTYPE=English_United States.1252;LC_MONETARY=English_United States.1252;LC_NUMERIC=C;LC_TIME=English_United States.1252"


# Return the cols and rows in one object
> dim(resultA)
[1] 10294     2


> install.packages("readxl")
> library(readxl)
> RVideoSignUp <- read_xlsx("RVideoSignUp.xlsx")
> aa <- RVideoSignUp[,2] == "毛子晴"
> aa
       姓名
 [1,] FALSE
 [2,] FALSE
 [3,] FALSE
 [4,] FALSE
 [5,] FALSE
 [6,] FALSE
 [7,] FALSE
 [8,]    NA
 [9,] FALSE
[10,] FALSE
[11,] FALSE
[12,] FALSE
[13,] FALSE
[14,] FALSE
[15,] FALSE
[16,] FALSE
[17,] FALSE
[18,] FALSE
[19,] FALSE
[20,] FALSE
[21,] FALSE
[22,] FALSE
[23,] FALSE
[24,] FALSE
[25,] FALSE
[26,] FALSE
[27,] FALSE
[28,] FALSE
[29,] FALSE
[30,] FALSE
[31,] FALSE
[32,] FALSE
[33,]  TRUE
[34,]    NA
[35,] FALSE
[36,] FALSE
[37,] FALSE
[38,] FALSE
[39,] FALSE


# Extract the court name
> resultA[1,1]
[1] "彰院毓109司執庚字第61046號"
> str_locate(resultA[1,1], "院")
     start end
[1,]     2   2
> str_locate(resultA[1,1], "院")[1]
[1] 2
> str_sub(resultA[1,1], 1, str_locate(resultA[1,1], "院")[1])
[1] "彰院"

# Or using split function
> str_split(resultA[1,1], "毓")[[1]][1]
[1] "彰院"






















```

[Google sheet for HW 1](https://docs.google.com/spreadsheets/d/1x07ZHmCFt2azUkBpwc1ktkP3BE2Ezy5CiRY0POfnxQM/edit#gid=0)

