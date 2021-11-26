library(stringr)
#list.files(path=getwd(),full.names=F)

#paste0(getwd(),"/QMDM-2021-11-05")
#list.files(path=paste0(getwd(),"/QMDM-2021-11-05"),full.names=F)
#setwd("C:/Users/Erika/Downloads/Quantitative Analysis/QMDM-2021-11-05/"),full.names = F)
#list.files(path=",", full.names = F)

filenames=list.files(paste0(path="C:/Users/Erika/Downloads/Benchmark_R08943016/QMDM-2021-11-05"), full.names = F)

aa = as.data.frame(filenames)

aa[[1]]
a1=str_locate(aa[[1]],"Marin")
a2=str_locate(aa[[1]],"To")
a3=str_locate(aa[[1]],"-")
a4=str_locate(aa[[1]],"-2021")

h1=str_sub(aa[[1]], a1[,2]+1, a2[,1]-1)
h2=str_sub(aa[[1]], a2[,2]+1, a3[,1]-1)
h3=str_sub(aa[[1]], a3[,2]+1, a4[,1]-1)

MYhomework=data.frame("Name" = h3, "From" = h1, "To" = h2)
                      
MYhomework[which(MYhomework[,3]==max(MYhomework[,3])),]
MYhomework[which(MYhomework[,3]==max(MYhomework[,3])),1]
Student = MYhomework[which(MYhomework[,3]==max(MYhomework[,3])),1]

print(paste0(Student, "看最多影片"))
