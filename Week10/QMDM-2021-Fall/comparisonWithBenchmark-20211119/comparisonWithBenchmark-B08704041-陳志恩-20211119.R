#讀取自己的資料
library(stringr)

filenames = list.files("QMDM-2021-11-05(et)", full.names = FALSE)
ff = as.data.frame(filenames, full.names = FALSE)
ff[[1]]

marin_posi = str_locate(ff[[1]], "Marin")
to_posi = str_locate(ff[[1]], "To")
hyphen_posi = str_locate(ff[[1]], "-")
date_posi = str_locate(ff[[1]], "2021")
date_posi
str_sub(ff[[1]], marin_posi[,2]+1, to_posi[,1]-1)
str_sub(ff[[1]], to_posi[,2]+1, hyphen_posi[,1]-1)
str_sub(ff[[1]], hyphen_posi[,2]+11, date_posi[,1]-2)

myHW = data.frame(Name=str_sub(ff[[1]], hyphen_posi[,2]+11, date_posi[,1]-2), From=str_sub(ff[[1]], marin_posi[,2]+1, to_posi[,1]-1), To=str_sub(ff[[1]], to_posi[,2]+1, hyphen_posi[,1]-1)
)
myHW



#找出差異
library(dplyr)
load("homework-R08943016.RData")


myData = newHW
Benchmark = homework

result = setdiff(myData,Benchmark)
result