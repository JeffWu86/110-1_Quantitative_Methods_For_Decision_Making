library(stringr)
setwd("D:/R/comparisonWithBenchmark-20211119-20211126T024009Z-001/comparisonWithBenchmark-20211119")
comparison = list.files(getwd(), full.names = FALSE)

setwd("D:/R/mikeMarinSummary-20211119-20211126T024012Z-001/mikeMarinSummary-20211119")
summary = list.files(getwd(), full.names = FALSE)

setwd("D:/R/mostVideos-20211119-20211126T024017Z-001/mostVideos-20211119")
mostVideos = list.files(getwd(), full.names = FALSE)

len1 = length(comparison)
comparison = str_split(comparison, "-")
stuName = c()
for(i in 1:len1)
{
  stuName[i] = comparison[[i]][3]
}

len2 = length(summary)
summary = str_split(summary, "-")
for(j in 1:len2)
{
  stuName[len1 + j] = summary[[j]][3]
}

len3 = length(mostVideos)
mostVideos = str_split(mostVideos, "-")
for(k in 1:len3)
{
  stuName[len1 + len2 + k] = mostVideos[[k]][3]
}
stuName = unique(stuName)
stuName