
comparisonWithBenchmark = list.files(path = "~/downloads/QMDM-2021-Fall/comparisonWithBenchmark-20211119")
Benchmark = as.data.frame(comparisonWithBenchmark)

mikeMarin = list.files(path = "~/downloads/QMDM-2021-Fall/mikeMarinSummary-20211119")
Summary = as.data.frame(mikeMarin)

mostVideos = list.files(path = "~/downloads/QMDM-2021-Fall/mostVideos-20211119")
Video = as.data.frame(mostVideos)

?str_sub
str_sub(Benchmark, start = 1, end = -1)

Benchmark[[1]]
x1 = str_locate(Benchmark[[1]], "mark-")
x2 = str_locate(Benchmark[[1]], "-2021")
B_name = str_sub(Benchmark[[1]], x1[,1]+15, x2[,1]-1)

Summary[[1]]
x3 = str_locate(Summary[[1]], "Summary-")
x4 = str_locate(Summary[[1]], "-2021")
S_name = str_sub(Summary[[1]], x3[,1]+18, x4[,1]-1)

Video[[1]]
x5 = str_locate(Video[[1]], "Videos-")
x6 = str_locate(Video[[1]], "-2021")
V_name = str_sub(Video[[1]], x5[,1]+17, x6[,1]-1)

resultA = unique(B_name, S_name)
resultB = unique(resultA, V_name)
Name = unique(resultA, resultB)
finalResult = as.data.frame(Name)
