library(stringr)
benchmark = list.files("/Users/maomao/Documents/R learning/11.26_practice/comparisonWithBenchmark-20211119")
marin = list.files("/Users/maomao/Documents/R learning/11.26_practice/mikeMarinSummary-20211119")
mostvideos = list.files("/Users/maomao/Documents/R learning/11.26_practice/mikeMarinSummary-20211119")

benchmark = as.data.frame(benchmark)
marin = as.data.frame(marin)
mostvideos = as.data.frame(mostvideos)

# benchmark 名單
View(benchmark)
a1 = str_length('comparisonWithBenchmark-B07704006-')+1
a2 <- str_locate(benchmark[[1]], "-20")
a2
list1 = data.frame(Name = str_sub(benchmark[[1]], a1, a2[,1]-1))
View(list1)
list1 = list(list1)

# marin名單
View(marin)
a3 = str_length('mikeMarinSummary-B08704066-')+1
a4 <- str_locate(marin[[1]], "-20")
a4
list2 = data.frame(Name = str_sub(marin[[1]], a3, a4[,1]-1))
View(list2)
list2 = list(list2)

#mostvideos 名單
View(mostvideos)
a5 = str_length('mikeMarinSummary-B07704006-')+1
a6 <- str_locate(mostvideos[[1]], "-20")
a6
list3 = data.frame(Name = str_sub(mostvideos[[1]], a5, a6[,1]-1))
list3 = list(list3)
list3


result = c(list1, list2, list3)
result
finalResult = unique(c(list1, list2, list3))
finalResult
