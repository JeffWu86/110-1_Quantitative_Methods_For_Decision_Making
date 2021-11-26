library(stringr)

filenames = list.files("QMDM-2021-11-05(et)", full.names = FALSE)
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

myHW = data.frame(Name=str_sub(ff[[1]], hyphen_posi[,2]+11, date_posi[,1]-2), From=str_sub(ff[[1]], marin_posi[,2]+1, to_posi[,1]-1), To=str_sub(ff[[1]], to_posi[,2]+1, hyphen_posi[,1]-1)
)
myHW


#判斷差異
library(stringr)

homework

getMost = function(x){
  n = 3
  length(x[[3]])
  for(i in(1:length(x[[3]]))){
    target = x[[3]][i]
    if(nchar(target) < 4){
      adjusted = paste(substr(target, 1, n-1),"0", substr(target, n, nchar(target)), sep ="")
      x[[3]][i] <- adjusted
    }
  }
  maxValue = max(x[[3]])
  index = grep(maxValue, x[[3]])
  return(x[[1]][index])
}


getMost(myHW)