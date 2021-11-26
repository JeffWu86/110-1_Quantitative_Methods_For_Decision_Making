library(stringr)

comp = list.files("comparisonWithBenchmark-20211119", full.names=FALSE)
name_comp = c()

for (i in 1:length(comp)){
  if (str_sub(comp[i],37,37)=="-"){
    name_comp[i] = str_sub(comp[i],35,36)
  }else{
    name_comp[i] = str_sub(comp[i],35,37)
  }
}

summ = list.files("mikeMarinSummary-20211119", full.names=FALSE)
name_summ = c()

for (i in 1:length(summ)){
  if (str_sub(summ[i],30,30)=="-"){
    name_summ[i] = str_sub(summ[i],28,29)
  }else{
    name_summ[i] = str_sub(summ[i],28,30)
  }
}

most = list.files("mostVideos-20211119", full.names=FALSE)
name_most = c()

for (i in 1:length(most)){
  if (str_sub(most[i],24,24)=="-"){
    name_most[i] = str_sub(most[i],22,23)
  }else{
    name_most[i] = str_sub(most[i],22,24)
  }
}

all_name = unique(c(name_comp, name_most, name_summ))
finalResult = data.frame(Names=all_name)