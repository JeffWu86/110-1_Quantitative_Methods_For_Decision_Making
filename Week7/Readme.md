# Week 7

## Lecture

```R
library(stringr)
# In top folder
filenames <- list.files(path="./QMDM-2021-11-05/", full.names = F)

aa <- as.data.frame(filenames)
aa[[1]]
a1 <- str_locate(aa[[1]], "Marin")
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2021")

str_sub(aa[[1]], a1[,2]+1, a2[,1]-1)
str_sub(aa[[1]], a2[,2]+1, a3[,1]-1)
str_sub(aa[[1]], a3[,2]+1, a4[,1]-1)
#Name From To 
HW <- data.frame( Name=str_sub(aa[[1]], a3[,2]+1, a4[,1]-1), From=str_sub(aa[[1]], a1[,2]+1, a2[,1]-1), To=str_sub(aa[[1]], a2[,2]+1, a3[,1]-1) )

HW






















```

[Google sheet for HW 1](https://docs.google.com/spreadsheets/d/1x07ZHmCFt2azUkBpwc1ktkP3BE2Ezy5CiRY0POfnxQM/edit#gid=0)

