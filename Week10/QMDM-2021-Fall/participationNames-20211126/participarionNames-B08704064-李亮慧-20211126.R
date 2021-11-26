fileBench = list.files("/Users/lilianghui/Downloads/comparisonWithBenchmark-20211119")
fileMost = list.files("/Users/lilianghui/Downloads/mostVideos-20211119")
fileNote = list.files("/Users/lilianghui/Downloads/mikeMarinSummary-20211119")

bench = as.data.frame(fileBench)
most = as.data.frame(fileMost)
note = as.data.frame(fileNote)

library(stringr)

pos = str_locate(fileBench,"-")
length = length(fileBench)

getName = function(oneFile){
  nameAll = NULL
  for(i in 1: length){
    names = str_sub(files[i],(pos[[1]][2,2]+1),(pos[[i]][3,1]-1))
    nameAll = c(nameAll,name)
  }
  return(nameAll)
}

getB = getName(fileBench)
getM = getName(fileMost)
getN = getName(fileNote)

getResults = c(getB,getM,getN)
Results = unique(getResults)
Results = data.frame(Names=Results)