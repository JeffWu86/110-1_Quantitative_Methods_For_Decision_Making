fileNames <- list.files("QMDM-2021-11-05",full.names=F)
fileNames
Sys.setlocale(locale="Chinese (Traditional)_Taiwan")
Sys.setlocale(locale="English_United States")
aa <-as.data.frame(fileNames)
aa <-data.frame(fileNames)
library(stringr)





a1 <- str_locate(aa[[1]], "Marin")
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2021")

From <- str_sub(aa[[1]], a1[,2]+1,a2[,2]-2)
From
To <- str_sub(aa[[1]], a2[,2]+1,a3[,1]-1)
To
Name <-str_sub(aa[[1]], a3[,2]+11,a4[,1]-1)
Name
homework.RData <- data.frame(Name=Name,From=From,To=To)

#還是錯誤的
apply(X=homework.RData,MARGIN=2,FUN=max)

homework1=homework.RData
homework2=homework
conResult1=c(as.matrix(homework1))
conResult2=c(as.matrix(homework2))
compResult=conResult1==conResult2
compResult
which(!compResult)
