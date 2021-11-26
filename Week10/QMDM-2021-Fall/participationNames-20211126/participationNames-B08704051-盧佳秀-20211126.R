library(stringr)
library(qualv)

getwd()
Sys.setlocale(locale="Chinese")


result1<-getNames(files1)
result2<-getNames(files2)
result3<-getNames(files3)

results <- c(result1, result2, result3)
finalResult <- unique(results)

finalResult <- data.frame(Names=finalResults)

aa <- c("a", "b", "c", "a", "d", "f")
bb <- unique(aa)
bb

