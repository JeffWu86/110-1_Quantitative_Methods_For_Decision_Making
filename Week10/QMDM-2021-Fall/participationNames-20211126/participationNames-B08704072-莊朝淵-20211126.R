library(stringr)
filenames = list.files(path = "~/downloads/drive-download-20211126T024445Z-001/comparisonWithBenchmark-20211119",  full.names = FALSE)
fileBenchmark = as.data.frame(filenames)

filenames2 = list.files(path = "~/downloads/drive-download-20211126T024445Z-001/mikeMarinSummary-20211119",  full.names = FALSE)
fileMarin = as.data.frame(filenames2)

filenames3 = list.files(path = "~/downloads/drive-download-20211126T024445Z-001/mostVideos-20211119",  full.names = FALSE)
fileMost = as.data.frame(filenames3)


str_sub(fileBenchmark, start = 1, end = -1)

B1 = str_locate(fileBenchmark[[1]], "Marin")
B2 = str_locate(fileBenchmark[[1]], "To")
B3 = str_locate(fileBenchmark[[1]], "-")
B4 = str_locate(fileBenchmark[[1]], "-2021")
nameB = str_sub(fileBenchmark[[1]], B3[,2]+11, B4[,1]-1)

M1 = str_locate(fileMarin[[1]], "Summry")
M2 = str_locate(fileMarin[[1]], "To")
M3 = str_locate(fileMarin[[1]], "-")
M4 = str_locate(fileMarin[[1]], "-2021")
nameM = str_sub(fileMarin[[1]], M3[,2]+11, M4[,1]-1)

Most1 = str_locate(fileMost[[1]], "Summry")
Most2 = str_locate(fileMost[[1]], "To")
Most3 = str_locate(fileMost[[1]], "-")
Most4 = str_locate(fileMost[[1]], "-2021")
nameMost = str_sub(fileMost[[1]], Most3[,2]+11, Most4[,1]-1)

results = c(name, nameB, nameM)
finalResult = unique(results)

finalResult = data.frame(Names = finalResult)


