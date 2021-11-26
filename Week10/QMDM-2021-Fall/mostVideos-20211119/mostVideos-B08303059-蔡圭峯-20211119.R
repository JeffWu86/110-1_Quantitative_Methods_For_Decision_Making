
library(stringr)

aa = list.files("QMDM-2021-11-05", full.names=FALSE)

bb = as.data.frame(aa)

cc = c()
dd = c()
ee = c()

for (i in 1:length(aa)){
  cc[i] = str_sub(aa[i],16,18)
  dd[i] = str_sub(aa[i],6,8)
  ee[i] = str_sub(aa[i],11,14)
}

homework = data.frame(Name=cc, From=dd, To=ee)

max = homework$Name[homework$To==max(homework$To)]
max

