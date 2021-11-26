MOST <- as.data.frame(list.files("mostVideos-20211119"))
SUM <- as.data.frame(list.files("mikeMarinSummary-20211119"))
MOST <- as.data.frame(list.files("comparisonWithBenchmark-20211119"))


aa <- getNames(MOST)
bb <- getNames(SUM)
cc <- getNames(COM)

results <- c(aa,bb,cc)
finalResult <- unique(results)

finalResult <- data.frame(Names=finalResult)
View(finalResult)