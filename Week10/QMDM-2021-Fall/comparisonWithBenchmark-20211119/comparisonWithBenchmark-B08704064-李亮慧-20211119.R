library(stringr)
list.files = ("QMDM-2021-11-05")
fileNames = list.files("QMDM-2021-11-05",full.names = F)
aa = as.data.frame(fileNames)
#aa
#aa[[1]]

a1 = str_locate(aa[[1]],"Marin")
a2 = str_locate(aa[[1]],"To")
a3 = str_locate(aa[[1]],"-")
a4 = str_locate(aa[[1]],"-2021")

From = str_sub(aa[[1]],a1[,2]+1,a2[,2]-2)
To = str_sub(aa[[1]],a2[,2]+1,a3[,1]-1)
Name = str_sub(aa[[1]],a3[,2]+1,a4[,1]-1)

homework <- data.frame("Name" = Name, "From" = From, "To" = To)

write.table(homework,file="homework-B08704064-20211105.RData")

max(homework[[3]])

bigname = which.max(homework[[3]])
homework[bigname,1]


print(paste0("watchmost", max)==which.max(homework[[3]]))

homework64[1,2] = "1.2"

comparResult = homework64==homework
comparResult

conResult1 = c(as.matrix(homework))
conResult2 = c(as.matrix(homework64))
compareResult = print(conResult1==conResult2)
which(!compareResult)

newHomework = order(homework[,2],decreasing=T)
newHomeworkhh = homework[newHomework,]
newHomeworkhh
