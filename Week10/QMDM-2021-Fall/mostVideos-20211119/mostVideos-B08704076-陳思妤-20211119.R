library(stringr)
list.files("QMDM-2021-11-05", full.names = F)
fileNames <- list.files("QMDM-2021-11-05")
aa<- as.data.frame(fileNames)
a1 <- str_locate(aa[[1]], "Marin")
a2 <- str_locate(aa[[1]], "To")
a3 <- str_locate(aa[[1]], "-")
a4 <- str_locate(aa[[1]], "-2021")

From <- str_sub(aa[[1]], a1[,2]+1,a2[,2]-2)

To <- str_sub(aa[[1]], a2[,2]+1,a3[,1]-1)

Name <-str_sub(aa[[1]], a3[,2]+1,a4[,1]-1)

FromNum <- as.numeric(From)

ToNum <- as.numeric(To)

Chapters <- ToNum-FromNum

Champ <- max(Chapters)
Champ
as.matrix(Chapters)

Champs<- list()
i = 0
for( j in 1:39)
{
  if(Chapters[j] == Champ)
  {
    i = i + 1
    Champs[i] <- j
  }
}
Champs
len<-length(Champs)

for(j in 1:len)
{

  print(Name[[Champs[[j]]]])
}
