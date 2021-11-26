library(stringr)

list.files("/Users/maomao/Documents/QMDM-2021-11-05")
filenames <- list.files("/Users/maomao/Documents/QMDM-2021-11-05")

aa <- as.data.frame(filenames)
aa[[1]]
View(aa)

a1 <- str_locate(aa[[1]], "Marin")
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a3
a4 <- str_locate(aa[[1]], "-2021")

str_sub(aa[[1]], a1[,2]+1, a2[,1]-1)
str_sub(aa[[1]], a2[,2]+1, a3[,1]-1)
str_sub(aa[[1]], a3[,2]+1, a4[,1]-1)

homework = data.frame(Name = str_sub(aa[[1]], a3[,2]+11, a4[,1]-1), From = str_sub(aa[[1]], a1[,2]+1, a2[,1]-1), To = str_sub(aa[[1]], a2[,2]+1, a3[,1]-1))
homework = na.omit(homework)
View(homework)

a5 = with(homework, To)
a5 = str_split(To,'[.]')

best = list(0,0)

for (i in c(1:length(a5))){
  if (a5[[i]][1] > best[1]){
    if (a5[[i]][2] > best[2]){
      best[1]=a5[[i]][1]
      best[2]=a5[[i]][2]
    }
  }
}
best
chapter = paste0(best[1],'.',best[2])

result = homework$Name[To == chapter]
result
# save(result, file=paste0(getwd(),"/homework-2020-11-19.RData"))
