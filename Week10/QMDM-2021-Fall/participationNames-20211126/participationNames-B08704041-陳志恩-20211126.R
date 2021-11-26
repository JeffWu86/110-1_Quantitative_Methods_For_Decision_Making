library(stringr)
library(dplyr)

filenames = list.files("comparisonWithBenchmark-20211119", full.names = FALSE)
ff = as.data.frame(filenames, full.names = FALSE)
ff[[1]]

marin_posi = str_locate(ff[[1]], "Marin")
to_posi = str_locate(ff[[1]], "To")
hyphen_posi = str_locate(ff[[1]], "-")
date_posi = str_locate(ff[[1]], "2021")
date_posi
str_sub(ff[[1]], marin_posi[,2]+1, to_posi[,1]-1)
str_sub(ff[[1]], to_posi[,2]+1, hyphen_posi[,1]-1)
str_sub(ff[[1]], hyphen_posi[,2]+11, date_posi[,1]-2)

cB = data.frame(Name=str_sub(ff[[1]], hyphen_posi[,2]+11, date_posi[,1]-2)
)
cB


filenames = list.files("mikeMarinSummary-20211119", full.names = FALSE)
ff = as.data.frame(filenames, full.names = FALSE)
ff[[1]]

marin_posi = str_locate(ff[[1]], "Marin")
to_posi = str_locate(ff[[1]], "To")
hyphen_posi = str_locate(ff[[1]], "-")
date_posi = str_locate(ff[[1]], "2021")
date_posi
str_sub(ff[[1]], marin_posi[,2]+1, to_posi[,1]-1)
str_sub(ff[[1]], to_posi[,2]+1, hyphen_posi[,1]-1)
str_sub(ff[[1]], hyphen_posi[,2]+11, date_posi[,1]-2)

mM = data.frame(Name=str_sub(ff[[1]], hyphen_posi[,2]+11, date_posi[,1]-2)
)
mM


filenames = list.files("mostVideos-20211119", full.names = FALSE)
ff = as.data.frame(filenames, full.names = FALSE)
ff[[1]]

marin_posi = str_locate(ff[[1]], "Marin")
to_posi = str_locate(ff[[1]], "To")
hyphen_posi = str_locate(ff[[1]], "-")
date_posi = str_locate(ff[[1]], "2021")
date_posi
str_sub(ff[[1]], marin_posi[,2]+1, to_posi[,1]-1)
str_sub(ff[[1]], to_posi[,2]+1, hyphen_posi[,1]-1)
str_sub(ff[[1]], hyphen_posi[,2]+11, date_posi[,1]-2)

mV = data.frame(Name=str_sub(ff[[1]], hyphen_posi[,2]+11, date_posi[,1]-2)
)
mV

a = union(cB,mM)
finalResult = union(a,mV)
finalResult
