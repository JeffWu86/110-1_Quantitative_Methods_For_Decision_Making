library(stringr)
library(dplyr)

comparison = list.files('/Users/jianjiayi/Desktop/數量方法與決策分析/comparisonWithBenchmark-20211119')
mikemarin = list.files('/Users/jianjiayi/Desktop/數量方法與決策分析/mikeMarinSummary-20211119')
mostvideos = list.files('/Users/jianjiayi/Desktop/數量方法與決策分析/mostVideos-20211119')

comparison_name = c()
mikemarin_name = c()
mostvideos_name = c()

for (i in 1:length(comparison)) {
  comparison_name = c(comparison_name, str_split(comparison[i],c('-'))[[1]][3])
}

for (i in 1:length(mikemarin)) {
  mikemarin_name = c(mikemarin_name, str_split(mikemarin[i],c('-'))[[1]][3])
}

for (i in 1:length(mostvideos)) {
  mostvideos_name = c(mostvideos_name, str_split(mostvideos[i],c('-'))[[1]][3])
}

Name_Once = unique(c(comparison_name, mikemarin_name, mostvideos_name))

