library(stringr)
benchdata = list.files("comparisonWithBenchmark-20211119", full.names = FALSE)

benchdata = data.frame(benchdata)

summarydata = list.files("mikeMarinSummary-20211119", full.names = FALSE)

summarydata = data.frame(summarydata)

mostdata = list.files("mostVideos-20211119", full.names = FALSE)

mostdata = data.frame(mostdata)

get_name_str = function(i){
  pos = str_locate_all(benchdata[i,1], "-")
  print(pos)
  start_pos = pos[[1]][2,2]
  end_pos = pos[[1]][3,2]
  #print(start_pos)
  #print(end_pos)
  namestr = str_sub(benchdata[i,1], start_pos+1, end_pos-1)
  return(namestr)
}

name_b = c()
name_m = c()
name_s = c()

for (a in 1:41) {
  name_str = (get_name_str(a))
  name_b = c(name_b, name_str)
}

for (a in 1:43) {
  name_str = (get_name_str(a))
  name_m = c(name_m, name_str)
}

for (a in 1:44) {
  name_str = (get_name_str(a))
  name_s = c(name_s, name_str)
}



all_name = data.frame(name_b, name_m, name_s)

